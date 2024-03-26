import 'package:ludu_365/widgets/custom_elevated_button.dart';
import 'package:ludu_365/widgets/custom_icon_button.dart';

import 'controller/pass_n_play_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';

// ignore: must_be_immutable
class PassNPlayThreeDialog extends StatelessWidget {
  PassNPlayThreeDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  PassNPlayThreeController controller;

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
                  SizedBox(height: 23.v),
                  Padding(
                    padding: EdgeInsets.only(left: 51.h),
                    child: _buildMapsAndFlagsOneRow(
                      image: ImageConstant.imgMapsAndFlags2,
                      playerText: "lbl_player_1".tr,
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Padding(
                    padding: EdgeInsets.only(left: 51.h),
                    child: _buildMapsAndFlagsOneRow(
                      image: ImageConstant.imgMapsAndFlags1,
                      playerText: "lbl_player_2".tr,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Padding(
                    padding: EdgeInsets.only(left: 51.h),
                    child: _buildMapsAndFlagsOneRow(
                      image: ImageConstant.imgMapsAndFlags140x40,
                      playerText: "lbl_player_3".tr,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Padding(
                    padding: EdgeInsets.only(left: 51.h),
                    child: _buildMapsAndFlagsOneRow(
                      image: ImageConstant.imgMapsAndFlags3,
                      playerText: "lbl_player_4".tr,
                    ),
                  ),
                  SizedBox(height: 55.v),
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
                       
                        decoration: AppDecoration.outlinePrimary2.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder3,
                        ),
                        child: Text(
                          "lbl_3p".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                      Container(
                        width: 34.h,
                        margin: EdgeInsets.only(left: 21.h),
                      
                        decoration: AppDecoration.outlinePrimaryContainer.copyWith(
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
  Widget _buildMapsAndFlagsOneRow({
    required String image,
    required String playerText,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: image,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
        Container(
          width: 87.h,
          margin: EdgeInsets.only(left: 12.h),
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 1.v,
          ),
          decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder3,
          ),
          child: Text(
            playerText,
            style: CustomTextStyles.bodySmallBlack90001.copyWith(
              color: appTheme.black90001,
            ),
          ),
        ),
      ],
    );
  }
}
