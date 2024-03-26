import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';

import 'controller/computer_game_controller.dart';

class ComputerGameScreen extends GetWidget<ComputerGameController> {
  const ComputerGameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 41.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 75.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              margin: EdgeInsets.only(right: 24.h),
                              decoration: AppDecoration.outlinePrimary5,
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgMapsAndFlags1,
                                        height: 30.adaptSize,
                                        width: 30.adaptSize,
                                        margin: EdgeInsets.only(
                                            left: 5.h, top: 7.v, bottom: 7.v)),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgGroup6,
                                        height: 44.v,
                                        width: 46.h,
                                        margin: EdgeInsets.only(left: 7.h))
                                  ]))),
                      SizedBox(height: 11.v),
                      _buildOneStack(),
                      SizedBox(height: 12.v),
                      Container(
                          margin: EdgeInsets.only(left: 16.h),
                          decoration: AppDecoration.outlinePrimary5,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgMapsAndFlags2,
                                    height: 30.adaptSize,
                                    width: 30.adaptSize,
                                    margin: EdgeInsets.only(
                                        left: 6.h, top: 7.v, bottom: 7.v)),
                                InkWell(
                                  onTap: () {
                                    controller.startGeneratingRandomNumbers();
                                    print('pressed');
                                  },
                                  child: Container(
                                      height: 44.v,
                                      width: 46.h,
                                      margin: EdgeInsets.only(left: 6.h),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgGroup6,
                                                height: 44.v,
                                                width: 46.h,
                                                alignment: Alignment.center),
                                            Obx(() {
                                              return Transform.rotate(
                                                angle: controller
                                                        .randomNumber.value *
                                                    60 *
                                                    (3.14159265359 / 180),
                                                child: CustomImageView(
                                                  imagePath:
                                                      'assets/images/dices/${controller.randomNumber.value}.png',
                                                  height: 30.adaptSize,
                                                  width: 30.adaptSize,
                                                  alignment: Alignment.center,
                                                ),
                                              );
                                            })
                                          ])),
                                )
                              ])),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          onTapBackTwo();
                        },
                        child: Container(
                          height: 28.v,
                          width: 32.h,
                          margin: EdgeInsets.only(left: 16.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.h, vertical: 2.v),
                          decoration: AppDecoration.outlinePrimary5.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgGroup27,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            alignment: Alignment.centerLeft,
                          ),
                        ),
                      ),
                    ]))));
  }

  /// Section Widget
  Widget _buildOneStack() {
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

  /// Navigates to the exitScreen when the action is triggered.
  onTapBackTwo() {
    Get.toNamed(
      AppRoutes.exitScreen,
    );
  }
}
