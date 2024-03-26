import 'controller/registration_submit_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/core/utils/validation_functions.dart';
import 'package:ludu_365/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:ludu_365/widgets/app_bar/appbar_title.dart';
import 'package:ludu_365/widgets/app_bar/custom_app_bar.dart';
import 'package:ludu_365/widgets/custom_elevated_button.dart';
import 'package:ludu_365/widgets/custom_icon_button.dart';
import 'package:ludu_365/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegistrationSubmitScreen extends GetWidget<RegistrationSubmitController> {
  RegistrationSubmitScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
             resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                        width: SizeUtils.width,
                child: Form(
                    key: _formKey,
                    child: Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(
                            horizontal: 18.h, vertical: 7.v),
                        child: Column(children: [
                          CustomIconButton(
                              height: 70.adaptSize,
                              width: 70.adaptSize,
                              padding: EdgeInsets.all(25.h),
                              decoration: IconButtonStyleHelper.fillGray,
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup95)),
                      
                          SizedBox(height: 31.v),
                          _buildNameEditText(),


                          SizedBox(height: 23.v),
                          _buildAddressEditText(),


                          SizedBox(height: 24.v),
                          _buildPhoneNumberEditText(),


                          SizedBox(height: 22.v),
                          _buildTransactionIdEditText(),


                          Spacer(),
                          SizedBox(height: 27.v),
                          _buildNextButton()
                        ]))))));
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
  Widget _buildNameRow() {
    return CustomTextFormField(
        width: 200.h,
        controller: controller.nameRowController,
        hintText: "lbl_name".tr,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        });
  }

  /// Section Widget
  Widget _buildNameEditText() {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 6.v, bottom: 7.v),
                  child:
                      Text("msg_name".tr, style: theme.textTheme.bodyMedium)),
              _buildNameRow()
            ]));
  }

  /// Section Widget
  Widget _buildAddressRow() {
    return CustomTextFormField(
        width: 200.h,
        controller: controller.addressRowController,
        hintText: "lbl_address".tr);
  }

  /// Section Widget
  Widget _buildAddressEditText() {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 6.v, bottom: 7.v),
                  child: Text("msg_address".tr,
                      style: theme.textTheme.bodyMedium)),
              _buildAddressRow()
            ]));
  }

  /// Section Widget
  Widget _buildPhoneNumberRow() {
    return CustomTextFormField(
        width: 200.h,
        controller: controller.phoneNumberRowController,
        hintText: "lbl_phone_number".tr,
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
                  child: Text("msg_phone_number".tr,
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
  Widget _buildNextButton() {
    return CustomElevatedButton(
        height: 39.v,
        width: 128.h,
        text: "lbl_next".tr,
        margin: EdgeInsets.only(right: 6.h),
        buttonStyle: CustomButtonStyles.fillLightBlue1,
        onPressed: () {
          onTapNextButton();
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
      AppRoutes.registrationSubmitTwoScreen,
    );
  }
}
