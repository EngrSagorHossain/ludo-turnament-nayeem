import 'controller/exit_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/widgets/custom_outlined_button.dart';

class ExitScreen extends GetWidget<ExitController> {
  const ExitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: SizeUtils.height,
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 208.v),
                child: _buildAndroidLargeSection())));
  }

  /// Section Widget
  Widget _buildOneSection() {
    return Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
            height: 360.adaptSize,
            width: double.maxFinite,
            child: Stack(alignment: Alignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.img360F494282200,
                  height: 360.adaptSize,
                  width: 360.adaptSize,
                  alignment: Alignment.center),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.only(left: 48.h, right: 42.h),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_4645457".tr,
                                style: theme.textTheme.bodyMedium),
                            SizedBox(height: 320.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Text("lbl_5775457".tr,
                                    style: theme.textTheme.bodyMedium))
                          ])))
            ])));
  }

  /// Section Widget
  Widget _buildAndroidLargeSection() {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            margin: EdgeInsets.only(top: 89.v),
            padding: EdgeInsets.symmetric(horizontal: 35.h, vertical: 10.v),
            decoration: AppDecoration.outlinePrimary4,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 70.h),
                      child: Text("lbl_quit_game".tr,
                          style: theme.textTheme.headlineSmall)),
                  SizedBox(height: 67.v),
                  Padding(
                      padding: EdgeInsets.only(right: 5.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomOutlinedButton(
                                width: 55.h,
                                text: "lbl_yes".tr,
                                onPressed: () {
                                  onTapYes();
                                }),
                            Container(
                                height: 28.v,
                                width: 34.h,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 7.h, vertical: 2.v),
                                decoration: AppDecoration.outlinePrimary2
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder3),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgVolume1,
                                    height: 17.v,
                                    width: 15.h,
                                    alignment: Alignment.bottomRight)),
                            Container(
                                height: 28.v,
                                width: 34.h,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 7.h, vertical: 4.v),
                                decoration: AppDecoration.outlinePrimary2
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder3),
                                child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgMusicalNoteSymbol,
                                    height: 15.adaptSize,
                                    width: 15.adaptSize,
                                    alignment: Alignment.topLeft)),
                            CustomOutlinedButton(
                                width: 55.h,
                                text: "lbl_no".tr,
                                onPressed: () {
                                  onTapNo();
                                })
                          ])),
                  SizedBox(height: 28.v)
                ])));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapYes() {
    Get.toNamed(
      AppRoutes.bottomNavigationScreen,
    );
  }

  /// Navigates to the computerGameScreen when the action is triggered.
  onTapNo() {
    Get.toNamed(
      AppRoutes.computerGameScreen,
    );
  }
}
