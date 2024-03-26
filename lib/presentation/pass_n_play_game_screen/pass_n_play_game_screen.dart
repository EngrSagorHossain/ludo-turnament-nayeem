import 'controller/pass_n_play_game_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/widgets/custom_icon_button.dart';
import 'package:ludu_365/widgets/custom_switch.dart';

class PassNPlayGameScreen extends GetWidget<PassNPlayGameController> {
  const PassNPlayGameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 29.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(flex: 47),
                      SizedBox(
                          height: 479.v,
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.topRight, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      _buildPlayerCounterStack(),
                                      SizedBox(height: 12.v),
                                      _buildMapsAndFlagsRow()
                                    ])),
                            Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    margin: EdgeInsets.only(
                                        left: 244.h,
                                        right: 24.h,
                                        bottom: 431.v),
                                    decoration: AppDecoration.outlinePrimary5,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgMapsAndFlags1,
                                              height: 30.adaptSize,
                                              width: 30.adaptSize,
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 7.v)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgGroup6,
                                              height: 44.v,
                                              width: 46.h,
                                              margin:
                                                  EdgeInsets.only(left: 7.h))
                                        ]))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    height: 48.v,
                                    width: 92.h,
                                    margin: EdgeInsets.only(left: 27.h),
                                    decoration: BoxDecoration(
                                        color: theme.colorScheme.onPrimary
                                            .withOpacity(1),
                                        border: Border.all(
                                            color: theme.colorScheme.primary,
                                            width: 2.h)))),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 56.h, top: 2.v, right: 243.h),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                  height: 44.v,
                                                  width: 46.h,
                                                  decoration: BoxDecoration(
                                                      gradient: LinearGradient(
                                                          begin:
                                                              Alignment(0, 0),
                                                          end: Alignment(1, 1),
                                                          colors: [
                                                        appTheme.yellowA100,
                                                        appTheme.pinkA100
                                                      ])))),
                                          SizedBox(height: 19.v),
                                          Text("lbl_player_3".tr,
                                              style: theme.textTheme.labelLarge)
                                        ]))),
                            CustomImageView(
                                imagePath: ImageConstant.imgMapsAndFlags140x40,
                                height: 30.adaptSize,
                                width: 30.adaptSize,
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.only(left: 33.h, top: 9.v))
                          ])),
                      Spacer(flex: 52),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: CustomIconButton(
                              height: 28.v,
                              width: 32.h,
                              padding: EdgeInsets.all(4.h),
                              onTap: () {
                                onTapBtnIconButton();
                              },
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup27)))
                    ]))));
  }

  /// Section Widget
  Widget _buildPlayerCounterStack() {
    return SizedBox(
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
                  padding: EdgeInsets.only(left: 48.h, right: 51.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Align(
                        alignment: Alignment.centerRight,
                        child: Text("lbl_player_1".tr,
                            style: theme.textTheme.labelLarge)),
                    SizedBox(height: 318.v),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("lbl_player_2".tr,
                              style: theme.textTheme.labelLarge),
                          Text("lbl_player_4".tr,
                              style: theme.textTheme.labelLarge)
                        ])
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildMapsAndFlagsRow() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              width: 92.h,
              decoration: AppDecoration.outlinePrimary5,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgMapsAndFlags140x40,
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 7.v)),
                    SizedBox(
                        height: 44.v,
                        width: 46.h,
                        child: Stack(alignment: Alignment.center, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgGroup6,
                              height: 44.v,
                              width: 46.h,
                              alignment: Alignment.center),
                          CustomImageView(
                              imagePath: ImageConstant.imgDice22,
                              height: 30.adaptSize,
                              width: 30.adaptSize,
                              alignment: Alignment.center)
                        ]))
                  ])),
          Obx(() => CustomSwitch(
              value: controller.isSelectedSwitch.value,
              onChange: (value) {
                controller.isSelectedSwitch.value = value;
              }))
        ]));
  }

  /// Navigates to the exitOneScreen when the action is triggered.
  onTapBtnIconButton() {
    Get.toNamed(
      AppRoutes.exitOneScreen,
    );
  }
}
