import 'package:ludu_365/widgets/custom_outlined_button_forcontract.dart';

import 'controller/contract_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';


class ContractScreen extends GetWidget<ContractController> {
  const ContractScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 23.v),
                  Text("lbl_contract".tr,
                      style: CustomTextStyles.titleLargeYellow700),




                      
                  SizedBox(height: 34.v),



                  _buildFacebookButton(),
                  SizedBox(height: 17.v),



                  
                  _buildWhatsappButton(),
                  SizedBox(height: 17.v),
                  _buildInstagramButton(),
                  SizedBox(height: 19.v),
                  _buildPlayStoreButton(),
                  SizedBox(height: 19.v),
                  _buildFacebookLudo365PageButton(),
                  SizedBox(height: 26.v),
                  _buildFacebookLudo365GroupButton(),
                  SizedBox(height: 24.v),
                  _buildInfoludo365gmailcomButton(),
                  Spacer(),




                        





                ]))));
  }

  /// Section Widget
  Widget _buildFacebookButton() {
    return CustomOutlinedButtonContract(
        height: 41.v,
        text: "lbl_facebook".tr,
        margin: EdgeInsets.symmetric(horizontal: 30.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 27.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFacebookLogo2,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL101,
        buttonTextStyle: CustomTextStyles.bodyMedium15);
  }

  /// Section Widget
  Widget _buildWhatsappButton() {
    return CustomOutlinedButtonContract(
        height: 41.v,
        text: "lbl_whatsapp".tr,
        margin: EdgeInsets.symmetric(horizontal: 30.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 27.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgWhatsapp2,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL101,
        buttonTextStyle: CustomTextStyles.bodyMedium15);
  }

  /// Section Widget
  Widget _buildInstagramButton() {
    return CustomOutlinedButtonContract(
        height: 41.v,
        text: "lbl_instagram".tr,
        margin: EdgeInsets.symmetric(horizontal: 30.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 27.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgInstagram2,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL101,
        buttonTextStyle: CustomTextStyles.bodyMedium15);
  }

  /// Section Widget
  Widget _buildPlayStoreButton() {
    return CustomOutlinedButtonContract(
        height: 41.v,
        text: "lbl_play_store".tr,
        margin: EdgeInsets.symmetric(horizontal: 30.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 27.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgPlay1,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL101,
        buttonTextStyle: CustomTextStyles.bodyMedium15);
  }


  

  /// Section Widget
  Widget _buildFacebookLudo365PageButton() {
    return CustomOutlinedButtonContract(
        height: 41.v,
        text: "msg_facebook_ludo365".tr,
        margin: EdgeInsets.symmetric(horizontal: 30.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 27.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFacebookLogo2,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL101,
        buttonTextStyle: CustomTextStyles.bodyMedium15);
  }

  /// Section Widget
  Widget _buildFacebookLudo365GroupButton() {
    return CustomOutlinedButtonContract(
        height: 41.v,
        text: "msg_facebook_ludo3652".tr,
        margin: EdgeInsets.symmetric(horizontal: 30.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 27.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgFacebookLogo2,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL101,
        buttonTextStyle: CustomTextStyles.bodyMedium15);
  }

  /// Section Widget
  Widget _buildInfoludo365gmailcomButton() {
    return CustomOutlinedButtonContract(
        height: 41.v,
        text: "msg_info_ludo365_gmail_com".tr,
        margin: EdgeInsets.symmetric(horizontal: 30.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 27.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGmail11,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL101,
        buttonTextStyle: CustomTextStyles.bodyMedium15);
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapImgHomepageEleven() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Navigates to the rateUsScreen when the action is triggered.
  onTapImgImage() {
    Get.toNamed(
      AppRoutes.rateUsScreen,
    );
  }
}
