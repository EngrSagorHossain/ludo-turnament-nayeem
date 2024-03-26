import 'controller/tournament_five_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/widgets/custom_elevated_button.dart';
import 'package:ludu_365/widgets/custom_icon_button.dart';
import 'package:ludu_365/widgets/custom_outlined_button.dart';

class TournamentFiveScreen extends GetWidget<TournamentFiveController> {
  const TournamentFiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 35.h),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildAndroidLarge(),
                      SizedBox(height: 33.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Row(children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 4.v),
                                child: CustomIconButton(
                                    height: 28.v,
                                    width: 32.h,
                                    padding: EdgeInsets.all(4.h),
                                    onTap: () {
                                      onTapBtnIconButton();
                                    },
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgGroup27))),
                            _buildChatButton()
                          ])),
                      SizedBox(height: 23.v),
                      _buildNextButton(),
                      SizedBox(height: 5.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildLevelCounterButton() {
    return CustomOutlinedButton(
        height: 50.v,
        text: "lbl_sakif_khan".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgDc2ec5a57197441,
                height: 25.v,
                width: 40.h)),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL102,
        buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainer16);
  }

  /// Section Widget
  Widget _buildTamimKhanButton() {
    return CustomOutlinedButton(
        height: 50.v,
        text: "lbl_tamim_khan".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 30.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgUnnamed2,
                height: 25.v,
                width: 40.h)),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL102,
        buttonTextStyle: CustomTextStyles.titleMediumOnPrimaryContainer16);
  }

  /// Section Widget
  Widget _buildAndroidLarge() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 10.v),
        decoration: AppDecoration.outlinePrimary4,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text("lbl_level_12".tr, style: theme.textTheme.titleMedium),
          SizedBox(height: 26.v),
          _buildLevelCounterButton(),
          SizedBox(height: 7.v),
          Text("lbl_vs".tr,
              style: CustomTextStyles.titleMediumOnPrimaryContainer17),
          SizedBox(height: 7.v),
          _buildTamimKhanButton(),
          SizedBox(height: 17.v)
        ]));
  }

  /// Section Widget
  Widget _buildChatButton() {
    return CustomElevatedButton(
        width: 94.h,
        text: "lbl_chat".tr,
        margin: EdgeInsets.only(left: 73.h),
        buttonStyle: CustomButtonStyles.fillLightBlueTL10,
        onPressed: () {
          onTapChatButton();
        });
  }

  /// Section Widget
  Widget _buildNextButton() {
    return CustomElevatedButton(
        width: 94.h,
        text: "lbl_next".tr,
        buttonStyle: CustomButtonStyles.fillLightBlueTL10,
        onPressed: () {
          onTapNextButton();
        });
  }

  /// Navigates to the tournamentThreeScreen when the action is triggered.
  onTapBtnIconButton() {
    Get.toNamed(
      AppRoutes.tournamentThreeScreen,
    );
  }

  /// Navigates to the tournamentSixScreen when the action is triggered.
  onTapChatButton() {
    Get.toNamed(
      AppRoutes.tournamentSixScreen,
    );
  }

  /// Navigates to the tournamentSixScreen when the action is triggered.
  onTapNextButton() {
    Get.toNamed(
      AppRoutes.tournamentSixScreen,
    );
  }
}
