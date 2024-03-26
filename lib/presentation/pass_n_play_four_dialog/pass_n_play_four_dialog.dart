import 'package:ludu_365/widgets/custom_elevated_button.dart';
import 'package:ludu_365/widgets/custom_icon_button.dart';

import 'controller/pass_n_play_four_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';

// ignore: must_be_immutable
class PassNPlayFourDialog extends StatelessWidget {
  PassNPlayFourDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  PassNPlayFourController controller;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 290.h,
            
              decoration: AppDecoration.outlinePrimary,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "msg_choose_color_and".tr,
                      style: CustomTextStyles.titleSmallYellow700,
                    ),
                  ),
                  SizedBox(height: 21.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      right: 21.h,
                    ),
                    child: Row(
                      children: [
                        _buildMapsAndFlagsTwoNinetyTwo(
                          image2: ImageConstant.imgMapsAndFlags2,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgMapsAndFlags140x40,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(
                            left: 9.h,
                            top: 5.v,
                            bottom: 5.v,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgMapsAndFlags1,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(
                            left: 12.h,
                            top: 5.v,
                            bottom: 5.v,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgMapsAndFlags3,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(
                            left: 14.h,
                            top: 5.v,
                            bottom: 5.v,
                          ),
                        ),
                        Container(
                          height: 19.v,
                          width: 87.h,
                          margin: EdgeInsets.only(
                            left: 17.h,
                            top: 5.v,
                            bottom: 5.v,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 19.v,
                                  width: 87.h,
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.onPrimaryContainer,
                                    borderRadius: BorderRadius.circular(
                                      5.h,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 19.h),
                                  child: Text(
                                    "lbl_player_1".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      right: 21.h,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgMapsAndFlags2,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.symmetric(vertical: 5.v),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgMapsAndFlags140x40,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(
                            left: 14.h,
                            top: 5.v,
                            bottom: 5.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: _buildMapsAndFlagsTwoNinetyTwo(
                            image2: ImageConstant.imgMapsAndFlags1,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgMapsAndFlags3,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(
                            left: 9.h,
                            top: 5.v,
                            bottom: 5.v,
                          ),
                        ),
                        Container(
                          height: 19.v,
                          width: 87.h,
                          margin: EdgeInsets.only(
                            left: 17.h,
                            top: 3.v,
                            bottom: 7.v,
                          ),
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: 19.v,
                                  width: 87.h,
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.onPrimaryContainer,
                                    borderRadius: BorderRadius.circular(
                                      5.h,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 19.h),
                                  child: Text(
                                    "lbl_player_2".tr,
                                    style: theme.textTheme.bodySmall,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      right: 21.h,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgMapsAndFlags2,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(
                            top: 3.v,
                            bottom: 7.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: _buildMapsAndFlagsTwoNinetyTwo(
                            image2: ImageConstant.imgMapsAndFlags140x40,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgMapsAndFlags1,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(
                            left: 8.h,
                            top: 3.v,
                            bottom: 7.v,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgMapsAndFlags3,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(
                            left: 13.h,
                            top: 3.v,
                            bottom: 6.v,
                          ),
                        ),
                        Container(
                          width: 87.h,
                          margin: EdgeInsets.only(
                            left: 17.h,
                            top: 3.v,
                            bottom: 6.v,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 19.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder3,
                          ),
                          child: Text(
                            "lbl_player_3".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 57.v),
                  Row(
                    children: [
                      Container(
                        width: 34.h,
                      
                        decoration: AppDecoration.outlinePrimary2.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder3,
                        ),
                        child: Text(
                          "lbl_2p".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      Container(
                        width: 34.h,
                        margin: EdgeInsets.only(left: 23.h),
                       
                        decoration: AppDecoration.outlinePrimaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder3,
                        ),
                        child: Text(
                          "lbl_3p".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      Container(
                        width: 34.h,
                        margin: EdgeInsets.only(left: 23.h),
                      
                        decoration: AppDecoration.outlinePrimary2.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder3,
                        ),
                        child: Text(
                          "lbl_4p".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3.v),
                ],
              ),
            ),
              SizedBox(height: 8.v),
          // below
          Row(children: [
            //back  arrow button
            Padding(
                padding: EdgeInsets.only(bottom: 3.v),
                child: CustomIconButton(
                    height: 28.v,
                    width: 32.h,
                    padding: EdgeInsets.all(4.h),
                    onTap: () {
                      Get.back();
                    },
                    child:
                        CustomImageView(imagePath: ImageConstant.imgGroup27))),

            //next button
            CustomElevatedButton(
                width: 94.h,
                text: "lbl_play".tr,
                margin: EdgeInsets.only(left: 67.h),
                buttonStyle: CustomButtonStyles.fillLightBlueTL10,
                onPressed: () {
                  print("okkkkkkkkkkkkkkkkkkkkkkkkkkkk");
                  Get.toNamed(
                    AppRoutes.passNPlayGameScreen,
                  );
                })
          ]),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildMapsAndFlagsTwoNinetyTwo({required String image2}) {
    return SizedBox(
      height: 30.adaptSize,
      width: 30.adaptSize,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCircle41,
            height: 30.adaptSize,
            width: 30.adaptSize,
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: image2,
            height: 20.adaptSize,
            width: 20.adaptSize,
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.only(bottom: 4.v),
          ),
        ],
      ),
    );
  }
}
