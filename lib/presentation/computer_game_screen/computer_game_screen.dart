import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';

import 'controller/computer_game_controller.dart';

class ComputerGameScreen extends GetWidget<ComputerGameController> {
  const ComputerGameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Obx(() {
      return Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 41.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 75.v),
            //for top dice
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 8.h),
                    decoration: AppDecoration.outlinePrimary5,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgMapsAndFlags140x40,
                              height: 30.adaptSize,
                              width: 30.adaptSize,
                              margin: EdgeInsets.only(
                                  left: 6.h, top: 7.v, bottom: 7.v)),
                          InkWell(
                            onTap: () {
                              controller.startGeneratingRandomNumbers(
                                  player: 'c');
                            },
                            child: Container(
                                height: 44.v,
                                width: 46.h,
                                margin: EdgeInsets.only(left: 6.h),
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgGroup6,
                                          height: 44.v,
                                          width: 46.h,
                                          alignment: Alignment.center),
                                      controller.activeDicePlayer.value == 'b'
                                          ? Obx(() {
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
                                          : Container(),
                                    ])),
                          )
                        ])),
                Container(
                    margin: EdgeInsets.only(right: 10.h),
                    decoration: AppDecoration.outlinePrimary5,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgMapsAndFlags1,
                              height: 30.adaptSize,
                              width: 30.adaptSize,
                              margin: EdgeInsets.only(
                                  left: 6.h, top: 7.v, bottom: 7.v)),
                          InkWell(
                            onTap: () {
                              controller.startGeneratingRandomNumbers(
                                  player: 'd');
                            },
                            child: Container(
                                height: 44.v,
                                width: 46.h,
                                margin: EdgeInsets.only(left: 6.h),
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgGroup6,
                                          height: 44.v,
                                          width: 46.h,
                                          alignment: Alignment.center),
                                      controller.activeDicePlayer.value == 'c'
                                          ? Obx(() {
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
                                          : Container()
                                    ])),
                          )
                        ])),
              ],
            ),
            SizedBox(height: 11.v),
            _buildOneStack(),
            SizedBox(height: 12.v),
            //for bottom dice
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10.h),
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
                          controller.startGeneratingRandomNumbers(player: 'b');
                        },
                        child: Container(
                            height: 44.v,
                            width: 46.h,
                            margin: EdgeInsets.only(left: 6.h),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgGroup6,
                                  height: 44.v,
                                  width: 46.h,
                                  alignment: Alignment.center),
                              controller.activeDicePlayer.value == 'a'
                                  ? Obx(() {
                                      return Transform.rotate(
                                        angle: controller.randomNumber.value *
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
                                  : Container(),
                            ])),
                      ),
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(right: 10.h),
                    decoration: AppDecoration.outlinePrimary5,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgMapsAndFlags3,
                              height: 30.adaptSize,
                              width: 30.adaptSize,
                              margin: EdgeInsets.only(
                                  left: 6.h, top: 7.v, bottom: 7.v)),
                          InkWell(
                            onTap: () {
                              controller.startGeneratingRandomNumbers(
                                  player: 'a');
                            },
                            child: Container(
                                height: 44.v,
                                width: 46.h,
                                margin: EdgeInsets.only(left: 6.h),
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgGroup6,
                                          height: 44.v,
                                          width: 46.h,
                                          alignment: Alignment.center),
                                      controller.activeDicePlayer.value == 'd'
                                          ? Obx(() {
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
                                          : Container()
                                    ])),
                          )
                        ])),
              ],
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                onTapBackTwo();
              },
              child: Container(
                height: 28.v,
                width: 32.h,
                margin: EdgeInsets.only(left: 16.h),
                padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 2.v),
                decoration: AppDecoration.outlinePrimary5
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup27,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  alignment: Alignment.centerLeft,
                ),
              ),
            ),
          ]));
    })));
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
                  left: controller.positionListOfPointer[0]['left'].toString(),
                  bottom:
                      controller.positionListOfPointer[0]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags2,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfPointer[0]['pointer']
                            .toString());
                  },
                ),
                PositionPointer(
                  left: controller.positionListOfPointer[1]['left'].toString(),
                  bottom:
                      controller.positionListOfPointer[1]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags2,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfPointer[1]['pointer']
                            .toString());
                  },
                ),
                PositionPointer(
                  left: controller.positionListOfPointer[2]['left'].toString(),
                  bottom:
                      controller.positionListOfPointer[2]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags2,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfPointer[2]['pointer']
                            .toString());
                  },
                ),
                PositionPointer(
                  left: controller.positionListOfPointer[3]['left'].toString(),
                  bottom:
                      controller.positionListOfPointer[3]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags2,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfPointer[3]['pointer']
                            .toString());
                  },
                ),
                //player 2
                PositionPointer(
                  left: controller.positionListOfPointer[4]['left'].toString(),
                  bottom:
                      controller.positionListOfPointer[4]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags140x40,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfPointer[4]['pointer']
                            .toString());
                  },
                ),
                PositionPointer(
                  left: controller.positionListOfPointer[5]['left'].toString(),
                  bottom:
                      controller.positionListOfPointer[5]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags140x40,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfPointer[5]['pointer']
                            .toString());
                  },
                ),
                PositionPointer(
                  left: controller.positionListOfPointer[6]['left'].toString(),
                  bottom:
                      controller.positionListOfPointer[6]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags140x40,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfPointer[6]['pointer']
                            .toString());
                  },
                ),
                PositionPointer(
                  left: controller.positionListOfPointer[7]['left'].toString(),
                  bottom:
                      controller.positionListOfPointer[7]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags140x40,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfPointer[7]['pointer']
                            .toString());
                  },
                ),
                //player 3
                PositionPointer(
                  left: controller.positionListOfPointer[8]['left'].toString(),
                  bottom:
                      controller.positionListOfPointer[8]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags1,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfPointer[8]['pointer']
                            .toString());
                  },
                ),
                PositionPointer(
                  left: controller.positionListOfPointer[9]['left'].toString(),
                  bottom:
                      controller.positionListOfPointer[9]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags1,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfPointer[9]['pointer']
                            .toString());
                  },
                ),
                PositionPointer(
                  left: controller.positionListOfPointer[10]['left'].toString(),
                  bottom:
                      controller.positionListOfPointer[10]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags1,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfPointer[10]['pointer']
                            .toString());
                  },
                ),
                PositionPointer(
                  left: controller.positionListOfPointer[11]['left'].toString(),
                  bottom:
                      controller.positionListOfPointer[11]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags1,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfPointer[11]['pointer']
                            .toString());
                  },
                ),
                //Player 4
                PositionPointer(
                  left: controller.positionListOfPointer[12]['left'].toString(),
                  bottom:
                      controller.positionListOfPointer[12]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags1,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfPointer[12]['pointer']
                            .toString());
                  },
                ),
                PositionPointer(
                  left: controller.positionListOfPointer[13]['left'].toString(),
                  bottom:
                      controller.positionListOfPointer[13]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags1,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfPointer[13]['pointer']
                            .toString());
                  },
                ),
                PositionPointer(
                  left: controller.positionListOfPointer[14]['left'].toString(),
                  bottom:
                      controller.positionListOfPointer[14]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags1,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfPointer[14]['pointer']
                            .toString());
                  },
                ),
                PositionPointer(
                  left: controller.positionListOfPointer[15]['left'].toString(),
                  bottom:
                      controller.positionListOfPointer[15]['bottom'].toString(),
                  imagePath: ImageConstant.imgMapsAndFlags1,
                  onPress: () {
                    controller.setPositionValueAndPointer(
                        pointer: controller.positionListOfPointer[15]['pointer']
                            .toString());
                  },
                ),
                //pointer end
                // PositionPointer(
                //   left: '200',
                //   bottom: '183',
                //   imagePath: ImageConstant.imgMapsAndFlags1,
                //   onPress: () {
                //     controller.setPositionValueAndPointer(
                //         pointer: controller.positionListOfPointer[15]['pointer']
                //             .toString());
                //   },
                // ),
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
