import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:ludu_365/widgets/app_bar/appbar_title.dart';
import 'package:ludu_365/widgets/app_bar/custom_app_bar.dart';
import 'package:ludu_365/widgets/custom_outlined_button_forcontract.dart';

import 'controller/payment_method_controller.dart';

class PaymentMethodScreen extends GetWidget<PaymentMethodController> {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 85.h, vertical: 31.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      _buildBKashButton(),
                      SizedBox(height: 19.v),
                      _buildNagadButton(),
                      SizedBox(height: 19.v),
                      _buildRocketButton(),
                      SizedBox(height: 19.v),
                      _buildDutchBanglaButton(),
                      SizedBox(height: 19.v),
                      _buildVisaCardButton(),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 50.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgGroup27,
            margin: EdgeInsets.only(left: 18.h, top: 13.v, bottom: 14.v),
            onTap: () {
              onTapIconButton();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_payment_method".tr));
  }

  /// Section Widget
  Widget _buildBKashButton() {
    return CustomOutlinedButtonContract(
        onPressed: () {
          controller.methodName.value = "bKash";
          Get.toNamed(AppRoutes.paymentSubmitScreen);
        },
        height: 43.v,
        text: "lbl_bkash".tr,
        margin: EdgeInsets.only(left: 10.h),
        leftIcon: Container(
            padding: EdgeInsets.fromLTRB(10.h, 4.v, 11.h, 3.v),
            margin: EdgeInsets.only(right: 20.h),
            decoration: BoxDecoration(
                color: theme.colorScheme.onPrimaryContainer,
                border: Border.all(
                    color: appTheme.black90001.withOpacity(0.2), width: 1.h)),
            child: CustomImageView(
                imagePath: ImageConstant.imgBkashlogo0c1572fbb4seeklogo1,
                height: 13.v,
                width: 15.h)),
        buttonStyle: CustomButtonStyles.outlinePrimary,
        buttonTextStyle: theme.textTheme.bodyLarge!);
  }

  /// Section Widget
  Widget _buildNagadButton() {
    return CustomOutlinedButtonContract(
        onPressed: () {
          controller.methodName.value = "Nagad";
          Get.toNamed(AppRoutes.paymentSubmitScreen);
        },
        height: 43.v,
        text: "lbl_nagad".tr,
        margin: EdgeInsets.only(left: 10.h),
        leftIcon: Container(
            padding: EdgeInsets.symmetric(horizontal: 3.h),
            margin: EdgeInsets.only(right: 20.h),
            decoration: BoxDecoration(
                color: theme.colorScheme.onPrimaryContainer,
                border: Border.all(
                    color: appTheme.black90001.withOpacity(0.2), width: 1.h)),
            child: CustomImageView(
                imagePath: ImageConstant.img31removebgpreview1,
                height: 21.v,
                width: 30.h)),
        buttonStyle: CustomButtonStyles.outlinePrimary,
        buttonTextStyle: theme.textTheme.bodyLarge!);
  }

  /// Section Widget
  Widget _buildRocketButton() {
    return CustomOutlinedButtonContract(
        onPressed: () {
          controller.methodName.value = "Rocket";
          Get.toNamed(AppRoutes.paymentSubmitScreen);
        },
        height: 43.v,
        text: "lbl_rocket".tr,
        margin: EdgeInsets.only(left: 10.h),
        leftIcon: Container(
            padding: EdgeInsets.only(left: 3.h, right: 3.h, bottom: 1.v),
            margin: EdgeInsets.only(right: 20.h),
            decoration: BoxDecoration(
                color: theme.colorScheme.onPrimaryContainer,
                border: Border.all(
                    color: appTheme.black90001.withOpacity(0.2), width: 1.h)),
            child: CustomImageView(
                imagePath: ImageConstant.imgRocketremovebgpreview1,
                height: 20.v,
                width: 30.h)),
        buttonStyle: CustomButtonStyles.outlinePrimary,
        buttonTextStyle: theme.textTheme.bodyLarge!);
  }

  /// Section Widget
  Widget _buildDutchBanglaButton() {
    return CustomOutlinedButtonContract(
        onPressed: () {
          controller.methodName.value = "Dutch Bangla Bank";
          Get.toNamed(AppRoutes.paymentSubmitScreen);
        },
        height: 43.v,
        text: "lbl_dutch_bangla".tr,
        margin: EdgeInsets.only(left: 10.h),
        leftIcon: Container(
            padding: EdgeInsets.fromLTRB(8.h, 3.v, 10.h, 4.v),
            margin: EdgeInsets.only(right: 20.h),
            decoration: BoxDecoration(
                color: theme.colorScheme.onPrimaryContainer,
                border: Border.all(
                    color: appTheme.black90001.withOpacity(0.2), width: 1.h)),
            child: CustomImageView(
                imagePath:
                    ImageConstant.imgDutchbanglabanklogo9af0455399seeklogo1,
                height: 13.v,
                width: 18.h)),
        buttonStyle: CustomButtonStyles.outlinePrimary,
        buttonTextStyle: theme.textTheme.bodyLarge!);
  }

  /// Section Widget
  Widget _buildVisaCardButton() {
    return CustomOutlinedButtonContract(
        onPressed: () {
          controller.methodName.value = "Visa Card";
          Get.toNamed(AppRoutes.paymentSubmitScreen);
        },
        height: 43.v,
        text: "lbl_visa_card".tr,
        margin: EdgeInsets.only(left: 10.h),
        leftIcon: Container(
            padding: EdgeInsets.symmetric(horizontal: 3.h),
            margin: EdgeInsets.only(right: 20.h),
            decoration: BoxDecoration(
                color: theme.colorScheme.onPrimaryContainer,
                border: Border.all(
                    color: appTheme.black90001.withOpacity(0.2), width: 1.h)),
            child: CustomImageView(
                imagePath: ImageConstant.img31removebgpreview1,
                height: 21.v,
                width: 30.h)),
        buttonStyle: CustomButtonStyles.outlinePrimary,
        buttonTextStyle: theme.textTheme.bodyLarge!);
  }

  /// Navigates to the paymentsOrRegistrationScreen when the action is triggered.
  onTapIconButton() {
    Get.toNamed(
      AppRoutes.paymentsOrRegistrationScreen,
    );
  }
}
