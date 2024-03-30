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
      child: Stack(
        alignment: Alignment.center,
        children: [
          Obx(() {
            return Stack(
              children: [
                CustomImageView(
                    imagePath: ImageConstant.img360F494282200,
                    height: 360.adaptSize,
                    width: 360.adaptSize,
                    alignment: Alignment.center),
                //pointer logic and view added start from here

                // //for player 1
                PositionPointer(
                  left: controller.positionListOfBox[0]['left'].toString(),
                  bottom: controller.positionListOfBox[0]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags2,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfBox[0]['pointer']
                            .toString());
                  },
                ),
                PositionPointer(
                  left: controller.positionListOfBox[1]['left'].toString(),
                  bottom: controller.positionListOfBox[1]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags2,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfBox[1]['pointer']
                            .toString());
                  },
                ),
                PositionPointer(
                  left: controller.positionListOfBox[2]['left'].toString(),
                  bottom: controller.positionListOfBox[2]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags2,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfBox[2]['pointer']
                            .toString());
                  },
                ),
                PositionPointer(
                  left: controller.positionListOfBox[3]['left'].toString(),
                  bottom: controller.positionListOfBox[3]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags2,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfBox[3]['pointer']
                            .toString());
                  },
                ),
                //player 2
                PositionPointer(
                  left: controller.positionListOfBox[4]['left'].toString(),
                  bottom: controller.positionListOfBox[4]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags140x40,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfBox[4]['pointer']
                            .toString());
                  },
                ),
                PositionPointer(
                  left: controller.positionListOfBox[5]['left'].toString(),
                  bottom: controller.positionListOfBox[5]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags140x40,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfBox[5]['pointer']
                            .toString());
                  },
                ),
                PositionPointer(
                  left: controller.positionListOfBox[6]['left'].toString(),
                  bottom: controller.positionListOfBox[6]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags140x40,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfBox[6]['pointer']
                            .toString());
                  },
                ),
                PositionPointer(
                  left: controller.positionListOfBox[7]['left'].toString(),
                  bottom: controller.positionListOfBox[7]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags140x40,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfBox[7]['pointer']
                            .toString());
                  },
                ),
                //player 3
                PositionPointer(
                  left: controller.positionListOfBox[8]['left'].toString(),
                  bottom: controller.positionListOfBox[8]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags1,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfBox[8]['pointer']
                            .toString());
                  },
                ),
                PositionPointer(
                  left: controller.positionListOfBox[9]['left'].toString(),
                  bottom: controller.positionListOfBox[9]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags1,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfBox[9]['pointer']
                            .toString());
                  },
                ),
                PositionPointer(
                  left: controller.positionListOfBox[10]['left'].toString(),
                  bottom: controller.positionListOfBox[10]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags1,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfBox[10]['pointer']
                            .toString());
                  },
                ),
                PositionPointer(
                  left: controller.positionListOfBox[11]['left'].toString(),
                  bottom: controller.positionListOfBox[11]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags1,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfBox[11]['pointer']
                            .toString());
                  },
                ),
                //Player 4
                PositionPointer(
                  left: controller.positionListOfBox[12]['left'].toString(),
                  bottom: controller.positionListOfBox[12]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags1,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfBox[12]['pointer']
                            .toString());
                  },
                ),
                PositionPointer(
                  left: controller.positionListOfBox[13]['left'].toString(),
                  bottom: controller.positionListOfBox[13]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags1,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfBox[13]['pointer']
                            .toString());
                  },
                ),
                PositionPointer(
                  left: controller.positionListOfBox[14]['left'].toString(),
                  bottom: controller.positionListOfBox[14]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags1,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfBox[14]['pointer']
                            .toString());
                  },
                ),
                PositionPointer(
                  left: controller.positionListOfBox[15]['left'].toString(),
                  bottom: controller.positionListOfBox[15]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags1,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfBox[15]['pointer']
                            .toString());
                  },
                ),
              ],
            );
          }),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(left: 48.h, right: 51.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("lbl_player_2".tr,
                              style: theme.textTheme.labelLarge),
                          Text("lbl_player_3".tr,
                              style: theme.textTheme.labelLarge),
                        ],
                      )),
                  SizedBox(height: 318.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("lbl_player_1".tr,
                          style: theme.textTheme.labelLarge),
                      Text("lbl_player_4".tr, style: theme.textTheme.labelLarge)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  onTapBackTwo() {
    Get.toNamed(
      AppRoutes.exitScreen,
    );
  }
}

class PositionPointer extends StatelessWidget {
  PositionPointer(
      {Key? key,
      required this.left,
      required this.bottom,
      required this.imagePath,
      required this.onPress})
      : super(key: key);
  String? left;
  String? bottom;
  String? imagePath;
  VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: double.parse(left!),
      bottom: double.parse(bottom!),
      child: InkWell(
        onTap: onPress,
        child: CustomImageView(
          imagePath: imagePath,
          height: 32,
          width: 32,
        ),
      ),
    );
  }
}
