import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/presentation/payment_method_screen/controller/payment_method_controller.dart';
import 'package:ludu_365/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:ludu_365/widgets/app_bar/appbar_title.dart';
import 'package:ludu_365/widgets/app_bar/custom_app_bar.dart';

import '../../core/utils/validation_functions.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';

class PaymentSubmitScreen extends GetWidget<PaymentMethodController> {
  PaymentSubmitScreen({Key? key}) : super(key: key);

  // GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: _buildAppBar(),
      body: Obx(() {
        return LoadingOverlay(
          opacity: 0.1,
          isLoading: controller.isLoading.value,
          progressIndicator: SpinKitSpinningLines(
            color: Colors.yellow,
            size: 40,
          ),
          child: SizedBox(
            width: SizeUtils.width,
            child: Form(
              // key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 7.v),
                child: Column(
                  children: [
                    SizedBox(height: 31.v),
                    Text(
                      "${controller.methodName.value} Account No:",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "+880194194545",
                          style: TextStyle(fontSize: 20, color: Colors.yellow),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.content_copy,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            String accountNumber =
                                "+880194194545"; // Replace with your actual account number

                            Clipboard.setData(
                                    ClipboardData(text: accountNumber))
                                .then((_) {
                              Fluttertoast.showToast(
                                msg: "Account number copied to clipboard",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                                backgroundColor: Colors.grey,
                                textColor: Colors.white,
                              );
                            });
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 22.v),
                    _buildPhoneNumberEditText(),
                    SizedBox(height: 22.v),
                    _buildTransactionAmountEditText(),
                    SizedBox(height: 22.v),
                    _buildTransactionIdEditText(),
                    Spacer(),
                    SizedBox(height: 27.v),
                    _buildNextButton()
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    ));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 50.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgGroup27,
            margin: EdgeInsets.only(left: 18.h, top: 14.v, bottom: 14.v),
            onTap: () {
              onTapIconButton();
            }),
        title: AppbarTitle(
            text: "msg_registration_submit".tr,
            margin: EdgeInsets.only(left: 63.h)));
  }

  /// Section Widget
  Widget _buildPhoneNumberRow() {
    return CustomTextFormField(
        width: 200.h,
        controller: controller.phoneNumberRowController,
        hintText: "Account Number".tr,
        textInputType: TextInputType.phone,
        validator: (value) {
          if (!isValidPhone(value)) {
            return "err_msg_please_enter_valid_phone_number".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildPhoneNumberEditText() {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 5.v, bottom: 8.v),
                  child: Text("Your Account No".tr,
                      style: theme.textTheme.bodyMedium)),
              _buildPhoneNumberRow()
            ]));
  }

  /// Section Widget
  Widget _buildTransactionIdRow() {
    return CustomTextFormField(
        width: 200.h,
        controller: controller.transactionIdRowController,
        hintText: "lbl_transaction_id".tr,
        textInputAction: TextInputAction.done);
  }

  Widget _buildTransactionAmountRow() {
    return CustomTextFormField(
        width: 200.h,
        controller: controller.transactionIAmountController,
        hintText: " Amount".tr,
        textInputAction: TextInputAction.done);
  }

  /// Section Widget
  Widget _buildTransactionIdEditText() {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 6.v, bottom: 7.v),
                  child: Text("msg_transaction_id".tr,
                      style: theme.textTheme.bodyMedium)),
              _buildTransactionIdRow()
            ]));
  }

  /// Section Widget
  Widget _buildTransactionAmountEditText() {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 6.v, bottom: 7.v),
                  child: Text("Enter Amount".tr,
                      style: theme.textTheme.bodyMedium)),
              _buildTransactionAmountRow()
            ]));
  }

  /// Section Widget
  Widget _buildNextButton() {
    return CustomElevatedButton(
        height: 39.v,
        width: 128.h,
        text: "lbl_submit".tr,
        margin: EdgeInsets.only(right: 6.h),
        buttonStyle: CustomButtonStyles.fillLightBlue1,
        onPressed: () {
          controller.tryToTournamentRegister();
        },
        alignment: Alignment.centerRight);
  }

  /// Navigates to the paymentsOrRegistrationScreen when the action is triggered.
  onTapIconButton() {
    Get.toNamed(
      AppRoutes.paymentsOrRegistrationScreen,
    );
  }

  /// Navigates to the registrationSubmitTwoScreen when the action is triggered.
  onTapNextButton() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }
}
