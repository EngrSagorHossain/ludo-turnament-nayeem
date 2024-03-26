import 'controller/payments_or_registration_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/widgets/custom_elevated_button.dart';
import 'package:ludu_365/widgets/custom_icon_button.dart';

class PaymentsOrRegistrationScreen
    extends GetWidget<PaymentsOrRegistrationController> {
  const PaymentsOrRegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 55.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 44.v),
                      _buildPaymentOrRegistrationSection(),
                      SizedBox(height: 36.v),
                      CustomIconButton(
                          height: 28.v,
                          width: 32.h,
                          padding: EdgeInsets.all(4.h),
                          onTap: () {
                            onTapBtnIconButton();
                          },
                          child: CustomImageView(
                              imagePath: ImageConstant.imgGroup27))
                    ]))));
  }

  /// Section Widget
  Widget _buildPaymentOrRegistrationSection() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 62.h, vertical: 38.v),
        decoration: AppDecoration.outlinePrimary3,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          CustomElevatedButton(
              height: 43.v,
              text: "lbl_payments".tr,
              buttonStyle: CustomButtonStyles.outlineLimeE,
              buttonTextStyle: CustomTextStyles.titleSmallBold,
              onPressed: () {
                onTapPayments();
              }),
          SizedBox(height: 37.v),
          CustomElevatedButton(
              height: 43.v,
              text: "lbl_registration".tr,
              buttonStyle: CustomButtonStyles.outlineIndigoE,
              buttonTextStyle: CustomTextStyles.titleSmallBold,
              onPressed: () {
                onTapRegistration();
              }),
          SizedBox(height: 23.v)
        ]));
  }

  /// Navigates to the paymentMethodScreen when the action is triggered.
  onTapPayments() {
    Get.toNamed(
      AppRoutes.paymentMethodScreen,
    );
  }

  /// Navigates to the registrationSubmitScreen when the action is triggered.
  onTapRegistration() {
    Get.toNamed(
      AppRoutes.registrationSubmitScreen,
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapBtnIconButton() {
    Get.toNamed(
      AppRoutes.bottomNavigationScreen,
    );
  }
}
