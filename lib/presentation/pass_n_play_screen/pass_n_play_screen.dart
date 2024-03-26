import 'package:ludu_365/widgets/custom_radio_button.dart';

import 'controller/pass_n_play_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/widgets/custom_elevated_button.dart';
import 'package:ludu_365/widgets/custom_icon_button.dart';
import 'package:ludu_365/presentation/pass_n_play_five_dialog/pass_n_play_five_dialog.dart';
import 'package:ludu_365/presentation/pass_n_play_five_dialog/controller/pass_n_play_five_controller.dart';
import 'package:ludu_365/presentation/pass_n_play_two_dialog/pass_n_play_two_dialog.dart';
import 'package:ludu_365/presentation/pass_n_play_two_dialog/controller/pass_n_play_two_controller.dart';

class PassNPlayScreen extends GetWidget<PassNPlayController> {
  const PassNPlayScreen(put, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 35.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildPassNPlay(),

                      SizedBox(height: 18.v),

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
                                  onTapBtnIconButton();
                                },
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgGroup27))),

                        //next button
                        CustomElevatedButton(
                            width: 94.h,
                            text: "lbl_next".tr,
                            margin: EdgeInsets.only(left: 67.h),
                            buttonStyle: CustomButtonStyles.fillLightBlueTL10,
                            onPressed: () {
                              onTapNext();
                            })
                      ]),
                      SizedBox(height: 5.v)
                    ]))));
  }






  /// Section Widget
  Widget _buildPassNPlay() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 10.v),
        decoration: AppDecoration.outlinePrimary4,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text("lbl_select_game".tr, style: theme.textTheme.titleMedium),
          SizedBox(height: 30.v),

          Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 14.h, vertical: 2.v),
                        decoration: AppDecoration.outlinePrimary7.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgPerson4,
                                  height: 15.adaptSize,
                                  width: 15.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 14.v, bottom: 16.v)),
                              Container(
                                  height: 44.v,
                                  width: 31.h,
                                  margin: EdgeInsets.only(bottom: 1.v),
                                  child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text("lbl_vs".tr,
                                                style: CustomTextStyles
                                                    .labelLarge13)),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 1.h, right: 15.h),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgPerson4,
                                                          height: 15.adaptSize,
                                                          width: 15.adaptSize),
                                                      SizedBox(height: 14.v),
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgPerson4,
                                                          height: 15.adaptSize,
                                                          width: 15.adaptSize)
                                                    ]))),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgPerson4,
                                            height: 15.adaptSize,
                                            width: 15.adaptSize,
                                            alignment: Alignment.centerRight)
                                      ]))
                            ])),


                            

                    //classical

                      CustomRadioButton(
                        text: "Classical",
                        onChange: (value) {
                        controller.radioGroup.value = value;
                      }
                      )

                          
                         

                          
                        



                          //classsical done
                     
                     
                     
                        
                  ])),
          SizedBox(height: 18.v),




          ///
          Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 5.h),
                        decoration: AppDecoration.outlinePrimary7.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 32.v,
                                  width: 35.h,
                                  margin:
                                      EdgeInsets.only(top: 13.v, bottom: 3.v),
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgPeople1,
                                            height: 20.adaptSize,
                                            width: 20.adaptSize,
                                            alignment: Alignment.bottomLeft),
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Text("lbl_vs".tr,
                                                style: CustomTextStyles
                                                    .labelLarge13))
                                      ])),
                              CustomImageView(
                                  imagePath: ImageConstant.imgPeople1,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin:
                                      EdgeInsets.only(left: 3.h, bottom: 29.v))
                            ])),

                    //team up//
                    GestureDetector(
                        onTap: () {
                          onTapTeamUp();
                        },
                        child: Container(
                            decoration: AppDecoration.outlinePrimary2.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderTL15),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgCircle41,
                                  height: 27.adaptSize,
                                  width: 27.adaptSize),

                              //team
                              Container(
                                  height: 21.v,
                                  width: 60.h,
                                  child: Stack(children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Text("lbl_team_up".tr,
                                            style: CustomTextStyles
                                                .labelMediumYellow700)),
                                  ]))
                              //team done///
                            ])))
                  ])),
          SizedBox(height: 47.v)
        ]));
  }

  /// Displays a dialog with the [PassNPlayFiveDialog] content.
  onTapTeamUp() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: PassNPlayFiveDialog(
        Get.put(
          PassNPlayFiveController(),
        ),
      ),
    ));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapBtnIconButton() {
   Get.back();
  }

  /// Displays a dialog with the [PassNPlayTwoDialog] content.
  onTapNext() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: PassNPlayTwoDialog(
        Get.put(
          PassNPlayTwoController(),
        ),
      ),
    ));
  }
}
