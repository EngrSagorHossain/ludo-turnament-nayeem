import 'package:ludu_365/widgets/custom_elevated_button.dart';
import 'package:ludu_365/widgets/custom_icon_button.dart';
import 'controller/pass_n_play_five_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';

// ignore: must_be_immutable
class PassNPlayFiveDialog extends StatelessWidget {
  PassNPlayFiveDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  PassNPlayFiveController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: double.maxFinite,
            
            decoration: AppDecoration.outlinePrimary,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [


                Text(
                  "msg_choose_color_and".tr,
                  style: CustomTextStyles.titleSmallYellow700,
                  maxLines: 1,
                  
                  
                ),



                SizedBox(height: 29.v),
                _buildMapsAndFlagsOneRow(
                  image: ImageConstant.imgMapsAndFlags2,
                  playerCounter: "lbl_player_1".tr,
                ),
                SizedBox(height: 10.v),
                _buildMapsAndFlagsOneRow(
                  image: ImageConstant.imgMapsAndFlags1,
                  playerCounter: "lbl_player_3".tr,
                ),
                SizedBox(height: 9.v),


                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 40.adaptSize,
                    margin: EdgeInsets.only(right: 68.h),
                    padding: EdgeInsets.all(6.h),
                    decoration: AppDecoration.outlinePrimary5.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Text(
                      "lbl_vs".tr,
                      style: CustomTextStyles.labelLarge13,
                    ),
                  ),
                ),



                SizedBox(height: 7.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMapsAndFlags140x40,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                    Container(
                      height: 19.v,
                      width: 87.h,
                      margin: EdgeInsets.only(left: 13.h),
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
                              padding: EdgeInsets.only(left: 9.h),
                              child: Text(
                                "lbl_player_2".tr,
                                style: CustomTextStyles.bodySmallBlack90001,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMapsAndFlags3,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                    Container(
                      width: 87.h,
                      margin: EdgeInsets.only(left: 12.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 9.h,
                        vertical: 1.v,
                      ),
                      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder3,
                      ),
                      child: Text(
                        "lbl_player_4".tr,
                        style: CustomTextStyles.bodySmallBlack90001,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 41.v),
              ],
            ),
          ),

          ///////////////////////
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
                       onTapBtIconButton();
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
             
                  Get.toNamed(
                    AppRoutes.passNPlayGameScreen,
                  );
                })
          ]),
          SizedBox(height: 5.v)
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildMapsAndFlagsOneRow({
    required String image,
    required String playerCounter,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: image,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(top: 1.v),
        ),
        Container(
          width: 87.h,
          margin: EdgeInsets.only(left: 14.h),
          padding: EdgeInsets.symmetric(
            horizontal: 9.h,
            vertical: 1.v,
          ),
          decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder3,
          ),
          child: Text(
            playerCounter,
            style: CustomTextStyles.bodySmallBlack90001.copyWith(
              color: appTheme.black90001,
            ),
          ),
        ),
      ],
    );
  }
}

void onTapBtIconButton() {
  Get.back();
}
