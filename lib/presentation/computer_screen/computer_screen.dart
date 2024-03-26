import 'controller/computer_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/widgets/custom_icon_button.dart';
import 'package:ludu_365/widgets/custom_outlined_button.dart';
import 'package:ludu_365/widgets/custom_radio_button.dart';

class ComputerScreen extends GetWidget<ComputerController> {
  const ComputerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                padding: EdgeInsets.only(left: 35.h, top: 148.v, right: 35.h),
                child: Column(children: [
                  Container(
                      width: 118.h,
                      padding:
                          EdgeInsets.symmetric(horizontal: 25.h, vertical: 1.v),
                      decoration: AppDecoration.outlinePrimary2.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder3),
                      child: Text("lbl_classic".tr,
                          style: CustomTextStyles.titleSmallYellow700)),

                  SizedBox(height: 5.v),

                  //select your color conatiner
                  _buildClassic(),

                  SizedBox(height: 17.v),

                  //select players conatiner
                  _buildAndroidLarge(),

                  SizedBox(height: 17.v),

                  //back button
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Row(children: [
                        CustomIconButton(
                            height: 28.v,
                            width: 32.h,
                            padding: EdgeInsets.all(4.h),
                            onTap: () {
                              onTapBtnIconButton();
                            },
                            child: CustomImageView(
                                imagePath: ImageConstant.imgGroup27)),

                        //play button
                        CustomOutlinedButton(
                            height: 26.v,
                            width: 99.h,
                            text: "lbl_play".tr,
                            margin: EdgeInsets.only(left: 64.h),
                            buttonStyle: CustomButtonStyles.outlineGray,
                            onPressed: () {
                              onTapPlay();
                            })
                      ])),
                  SizedBox(height: 5.v)
                ]))));
  }














  /// Section Widget
  Widget _buildClassic() {
    return Container(
       
        decoration: AppDecoration.outlinePrimary4,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Text("msg_select_your_color".tr,
                    style: theme.textTheme.titleMedium),
              ),
              SizedBox(height: 18.v),



              Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMapsAndFlags2,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgMapsAndFlags3,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgMapsAndFlags1,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgMapsAndFlags140x40,
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                )
              ]),
              SizedBox(height: 25.v),



              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
              
                children: [
              
               Obx(() => Padding(
                  padding: EdgeInsets.only(left: 20.h, right: 5.h),
                  child: CustomRadioButton(
                      value: "blue",
                      groupValue: controller.radioGroup.value,
                      padding: EdgeInsets.symmetric(vertical: 7.v),
                      onChange: (value) {
                        controller.radioGroup.value = value;
                      }))),
              
              
                       Obx(() => Padding(
                  padding: EdgeInsets.only(left: 20.h, right: 5.h),
                  child: CustomRadioButton(
                      value: "yellow",
                      groupValue: controller.radioGroup.value,
                      padding: EdgeInsets.symmetric(vertical: 7.v),
                      onChange: (value) {
                        controller.radioGroup.value = value;
                      }))),
              
              
              
                       Obx(() => Padding(
                  padding: EdgeInsets.only(left: 20.h, right: 5.h),
                  child: CustomRadioButton(
                      value: "green",
                      groupValue: controller.radioGroup.value,
                      padding: EdgeInsets.symmetric(vertical: 7.v),
                      onChange: (value) {
                        controller.radioGroup.value = value;
                      }))),
              
              
              
                       Obx(() => Padding(
                  padding: EdgeInsets.only(left: 20.h, right: 5.h),
                  child: CustomRadioButton(
                      value: "red",
                      groupValue: controller.radioGroup.value,
                      padding: EdgeInsets.symmetric(vertical: 7.v),
                      onChange: (value) {
                        controller.radioGroup.value = value;
                      }
                      ))),
              
              
              
                      
              
              
              
              
              
              
              SizedBox(height: 2.v)
                          ])]));
  }












  /// Section Widget
  Widget _buildAndroidLarge() {
    return Container(
        width: 290.h,
        padding: EdgeInsets.symmetric(horizontal: 60.h, vertical: 10.v),
        decoration: AppDecoration.outlinePrimary4,



        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [



              Text("lbl_select_players".tr, style: theme.textTheme.titleMedium),
              SizedBox(height: 16.v),


               // 2 players
                 
                    Obx(() => Padding(
                  padding: EdgeInsets.only(left: 20.h, right: 5.h),
                  child: CustomRadioButton(
                      text: "lbl_2_players".tr,
                      value: "lbl_2_players".tr,
                      groupValue: controller.radioGroup.value,
                      padding: EdgeInsets.symmetric(vertical: 7.v),
                      onChange: (value) {
                        controller.radioGroup.value = value;
                      }))),


                      // 2 players done





              SizedBox(height: 14.v),


              Obx(() => Padding(
                  padding: EdgeInsets.only(left: 20.h, right: 5.h),
                  child: CustomRadioButton(
                      text: "lbl_4_players".tr,
                      value: "lbl_4_players".tr,
                      groupValue: controller.radioGroup.value,
                      padding: EdgeInsets.symmetric(vertical: 7.v),
                      onChange: (value) {
                        controller.radioGroup.value = value;
                      }))),




                      
              SizedBox(height: 16.v)
            ]));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapBtnIconButton() {
    Get.back();
  }

  /// Navigates to the computerGameScreen when the action is triggered.
  onTapPlay() {
    Get.toNamed(
      AppRoutes.computerGameScreen,
    );
  }
}
