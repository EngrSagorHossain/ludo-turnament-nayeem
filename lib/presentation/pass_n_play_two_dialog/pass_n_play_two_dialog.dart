import 'package:ludu_365/widgets/custom_elevated_button.dart';
import 'package:ludu_365/widgets/custom_icon_button.dart';

import 'controller/pass_n_play_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/presentation/pass_n_play_four_dialog/pass_n_play_four_dialog.dart';
import 'package:ludu_365/presentation/pass_n_play_four_dialog/controller/pass_n_play_four_controller.dart';
import 'package:ludu_365/presentation/pass_n_play_three_dialog/pass_n_play_three_dialog.dart';
import 'package:ludu_365/presentation/pass_n_play_three_dialog/controller/pass_n_play_three_controller.dart';

// ignore_for_file: must_be_immutable
class PassNPlayTwoDialog extends StatelessWidget {
  PassNPlayTwoDialog(this.controller, {Key? key}) : super(key: key);

  PassNPlayTwoController controller;

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
                          child: Text("msg_choose_color_and".tr,
                              style: CustomTextStyles.titleSmallYellow700)),
                      SizedBox(height: 23.v),
                      Padding(
                          padding: EdgeInsets.only(left: 28.h, right: 48.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(top: 2.v, bottom: 7.v),
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant.imgCheckCircle1,
                                              height: 45.adaptSize,
                                              width: 45.adaptSize),
                                          SizedBox(height: 27.v),
                                          CustomImageView(
                                              imagePath: ImageConstant.imgCircle41,
                                              height: 37.adaptSize,
                                              width: 37.adaptSize)
                                        ])),
                                Padding(
                                    padding: EdgeInsets.only(left: 16.h),
                                    child: Column(children: [
                                      _buildMapsAndFlagsOne(
                                          image: ImageConstant.imgMapsAndFlags2,
                                          playerText: "lbl_player_1".tr),
                                      SizedBox(height: 10.v),
                                      _buildMapsAndFlagsOne(
                                          image: ImageConstant.imgMapsAndFlags1,
                                          playerText: "lbl_player_2".tr),
                                      SizedBox(height: 19.v),
                                      Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgMapsAndFlags140x40,
                                                height: 20.adaptSize,
                                                width: 20.adaptSize),
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
                                                                  color: theme
                                                                      .colorScheme
                                                                      .onPrimaryContainer,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5.h)))),
                                                      Align(
                                                          alignment:
                                                              Alignment.bottomLeft,
                                                          child: Padding(
                                                              padding: EdgeInsets.only(
                                                                  left: 9.h),
                                                              child: Text(
                                                                  "lbl_player_1".tr,
                                                                  style: CustomTextStyles
                                                                      .bodySmallBlack90001)))
                                                    ]))
                                          ]),
                                      SizedBox(height: 8.v),
                                      Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgMapsAndFlags3,
                                                height: 20.adaptSize,
                                                width: 20.adaptSize),
                                            Container(
                                                width: 87.h,
                                                margin: EdgeInsets.only(left: 12.h),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 9.h, vertical: 1.v),
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer
                                                    .copyWith(
                                                        borderRadius: BorderRadiusStyle
                                                            .roundedBorder3),
                                                child: Text("lbl_player_2".tr,
                                                    style: CustomTextStyles
                                                        .bodySmallBlack90001))
                                          ])
                                    ]))
                              ])),
                      SizedBox(height: 47.v),





                      
                      Row(children: [
                        Container(
                            width: 34.h,
                         
                            decoration: AppDecoration.outlinePrimaryContainer.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder3),
                            child:
                                Text("lbl_2p".tr, style: theme.textTheme.titleSmall)),
                        GestureDetector(
                            onTap: () {
                              onTapTxtP();
                            },
                            child: Container(
                                width: 34.h,
                                margin: EdgeInsets.only(left: 23.h),
                              
                                decoration: AppDecoration.outlinePrimary2.copyWith(
                                    borderRadius: BorderRadiusStyle.roundedBorder3),
                                child: Text("lbl_3p".tr,
                                    style: theme.textTheme.titleSmall))),
                        GestureDetector(
                            onTap: () {
                              onTapTxtP1();
                            },
                            child: Container(
                                width: 34.h,
                                margin: EdgeInsets.only(left: 23.h),
                                
                                decoration: AppDecoration.outlinePrimary2.copyWith(
                                    borderRadius: BorderRadiusStyle.roundedBorder3),
                                child: Text("lbl_4p".tr,
                                    style: theme.textTheme.titleSmall)))
                      ]),
                      SizedBox(height: 3.v)
                    ])),
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
  Widget _buildMapsAndFlagsOne({
    required String image,
    required String playerText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: image,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(top: 1.v)),
      Container(
          width: 87.h,
          margin: EdgeInsets.only(left: 14.h),
          padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 1.v),
          decoration: AppDecoration.fillOnPrimaryContainer
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder3),
          child: Text(playerText,
              style: CustomTextStyles.bodySmallBlack90001
                  .copyWith(color: appTheme.black90001)))
    ]);
  }

  /// Displays a dialog with the [PassNPlayFourDialog] content.
  onTapTxtP() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: PassNPlayFourDialog(
        Get.put(
          PassNPlayFourController(),
        ),
      ),
    ));
  }

  /// Displays a dialog with the [PassNPlayThreeDialog] content.
  onTapTxtP1() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: PassNPlayThreeDialog(
        Get.put(
          PassNPlayThreeController(),
        ),
      ),
    ));
  }
}
