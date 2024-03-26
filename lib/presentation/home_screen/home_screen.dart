// ignore_for_file: dead_code

import 'controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/widgets/custom_outlined_button.dart';
import 'package:ludu_365/presentation/settings_dialog/settings_dialog.dart';
import 'package:ludu_365/presentation/settings_dialog/controller/settings_controller.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 27.v),
                child: Column(children: [
                  _buildNerdOneRow(),
            
                  SizedBox(height: 39.v),
            
                  //home logo//////////////////////////////////////
                  CustomImageView(
                      imagePath: ImageConstant.imgGroupBlack900,
                      height: 126.v,
                      width: 200.h,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 60.h)),
                  SizedBox(height: 38.v),
                  /////////////////////////////////////////////////
            
                  //Done
            
                  // 4 container.....................................
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 29.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // 4 container 1st computer
                            Padding(
                                padding: EdgeInsets.only(right: 17.h),
                                child: _buildVsElevenColumn(
                                    userImage: ImageConstant.imgSmartphone11,
                                    pASSNPLAY: "lbl_computer".tr,
                                    onTapVsElevenColumn: () {
                                      onTapVsElevenColumn();
                                    })),
            
                            // 4 container 2st pass n play
                            Padding(
                                padding: EdgeInsets.only(left: 17.h),
                                child: _buildVsElevenColumn(
                                    userImage: ImageConstant.imgVs11,
                                    pASSNPLAY: "lbl_pass_n_play".tr,
                                    onTapVsElevenColumn: () {
                                      onTapVsElevenColumn1();
                                    }))
                          ])),
                  SizedBox(height: 30.v),
            
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 29.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // 4 container 3st registration
                            Padding(
                                padding: EdgeInsets.only(right: 17.h),
                                child: _buildTournamentColumn(
                                    tournamentText: "lbl_registration2".tr,
                                    trophyImage:
                                        ImageConstant.imgOnlineRegistration,
                                    tOURNAMENTS: "lbl_registration2".tr,
                                    onTapTournamentColumn: () {
                                      onTapTournamentColumn();
                                    })),
            
                            // 4 container 4st tournament
                            Padding(
                                padding: EdgeInsets.only(left: 17.h),
                                child: _buildTournamentColumn(
                                    tournamentText: "lbl_tournament".tr,
                                    trophyImage: ImageConstant.imgTrophy1,
                                    tOURNAMENTS: "lbl_tournaments".tr,
                                    onTapTournamentColumn: () {
                                      onTapTournamentColumn1();
                                    }))
                          ])),
                  SizedBox(height: 32.v),
            
                  // 4 caontainer done ..........$$$$$$$$
            
                  ///tournament image//
                  CustomImageView(
                      imagePath: ImageConstant.imgGroupYellowA400,
                      height: 39.v,
                      width: 171.h),
                  SizedBox(height: 24.v),
            
                  ////////////////////////////////////
            
                  //am pm//////
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(right: 87.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                    width: 17.h,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 3.h, vertical: 2.v),
                                    decoration: AppDecoration.fillOnPrimary,
                                    child: Text("lbl_0".tr,
                                        style: CustomTextStyles.titleSmall14)),
                                Container(
                                    width: 17.h,
                                    margin: EdgeInsets.only(left: 7.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 4.h, vertical: 2.v),
                                    decoration: AppDecoration.fillOnPrimary,
                                    child: Text("lbl_0".tr,
                                        style: CustomTextStyles.titleSmall14)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 5.h, top: 3.v, bottom: 2.v),
                                    child: Text("lbl".tr,
                                        style: CustomTextStyles.titleSmall14)),
                                Container(
                                    width: 17.h,
                                    margin: EdgeInsets.only(left: 5.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 3.h, vertical: 2.v),
                                    decoration: AppDecoration.fillOnPrimary,
                                    child: Text("lbl_0".tr,
                                        style: CustomTextStyles.titleSmall14)),
                                Container(
                                    width: 17.h,
                                    margin: EdgeInsets.only(left: 7.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 4.h, vertical: 2.v),
                                    decoration: AppDecoration.fillOnPrimary,
                                    child: Text("lbl_0".tr,
                                        style: CustomTextStyles.titleSmall14)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 7.h, top: 7.v, bottom: 5.v),
                                    child: Text("lbl_am_pm".tr,
                                        style: CustomTextStyles.bodySmall8))
                              ]))),
                ]))));
  }

  /////  first part of app like profile, settigns, notifications, invite, exit, facebook ,, youtube icon..................

  /// Section Widget
  Widget _buildNerdOneRow() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        //home profile
        GestureDetector(
            onTap: () {
              onTapFrameOne();
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 2.v),
                decoration: AppDecoration.outlinePrimary6
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgNerd1,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(bottom: 1.v)),
                      Padding(
                          padding:
                              EdgeInsets.only(left: 5.h, top: 3.v, bottom: 5.v),
                          child: Text("lbl_profile".tr,
                              style: CustomTextStyles
                                  .bodySmallOnPrimaryContainer10))
                    ]))),

        //...........................finished profile.......................

        //settings home//
        Padding(
          padding: const EdgeInsets.only(right: 80),
          child: GestureDetector(
              onTap: () {
                onTapFrameFour();
              },
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 2.v),
                  decoration: AppDecoration.outlinePrimary6
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgSettings11,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                            margin: EdgeInsets.only(bottom: 1.v)),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 5.h, top: 3.v, bottom: 4.v),
                            child: Text("lbl_settings".tr,
                                style: CustomTextStyles
                                    .bodySmallOnPrimaryContainer10))
                      ]))),
        ),

        // home  notification ....................................
        CustomOutlinedButton(
            width: 92.h,
            text: "lbl_notifications".tr,
            leftIcon: Container(
                margin: EdgeInsets.only(right: 1.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgBellring11,
                    height: 20.adaptSize,
                    width: 20.adaptSize)),
            buttonStyle: CustomButtonStyles.outlinePrimaryTL10,
            buttonTextStyle: CustomTextStyles.bodySmallOnPrimaryContainer10,
            onPressed: () {
              onTapNotifications();
            }),
      ]),
      SizedBox(
        height: 13.v,
      ),
      Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ////////////////////////////////////  facebook logo and exit

            CustomImageView(
              imagePath: ImageConstant.youtube,
              height: 23,
              width: 23,
            ),

            Padding(
                padding: EdgeInsets.only(
                  right: 155.h,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgFacebookLogo2,
                  height: 23,
                  width: 23,
                )),

            //  homeee..............invitee......................
            Padding(
              padding: const EdgeInsets.only(left: 22),
              child: CustomOutlinedButton(
                  width: 68.h,
                  text: "lbl_invite".tr,
                  leftIcon: Container(
                      margin: EdgeInsets.only(right: 5.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgShare21,
                          height: 20.adaptSize,
                          width: 20.adaptSize)),
                  buttonStyle: CustomButtonStyles.outlinePrimaryTL10,
                  buttonTextStyle:
                      CustomTextStyles.bodySmallOnPrimaryContainer10,
                  alignment: Alignment.centerRight),
            ),
          ]),
      SizedBox(
        height: 13.v,
      ),

      //exit
      InkWell(
        onTap: (){
          Get.toNamed(AppRoutes.exitThreeScreen);
        },
        child: Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgLogout1,
              height: 25,
              width: 25,
            )),
      ),
    ]);
  }

  // 4 container home............................................................................

  /// Common widget
  Widget _buildVsElevenColumn({
    required String userImage,
    required String pASSNPLAY,
    Function? onTapVsElevenColumn,
  }) {
    return GestureDetector(
        onTap: () {
          onTapVsElevenColumn!.call();
        },
        child: SizedBox(
            width: 123,
            child: Container(
                padding: EdgeInsets.all(5.h),
                decoration: AppDecoration.outlineOnPrimaryContainer
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Container(
                      height: 47.v,
                      width: 110.h,
                      padding:
                          EdgeInsets.symmetric(horizontal: 37.h, vertical: 5.v),
                      decoration: AppDecoration.fillGray.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL10),
                      child: CustomImageView(
                          imagePath: userImage,
                          height: 35.adaptSize,
                          width: 35.adaptSize,
                          alignment: Alignment.topCenter)),
                  SizedBox(height: 2.v),
                  Text(pASSNPLAY,
                      style: CustomTextStyles.bodyMediumRacingSansOne.copyWith(
                          color: theme.colorScheme.onPrimaryContainer))
                ]))));
  }

  /// Common widget
  Widget _buildTournamentColumn({
    required String tournamentText,
    required String trophyImage,
    required String tOURNAMENTS,
    Function? onTapTournamentColumn,
  }) {
    return GestureDetector(
        onTap: () {
          onTapTournamentColumn!.call();
        },
        child: SizedBox(
            width: 123,
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 4.v),
                decoration: AppDecoration.outlineOnPrimaryContainer
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 2.v),
                      SizedBox(
                          height: 47.v,
                          width: 110.h,
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: EdgeInsets.only(top: 13.v),
                                    child: Text(tournamentText,
                                        style: CustomTextStyles
                                            .bodyMediumRacingSansOne
                                            .copyWith(
                                                color: theme.colorScheme
                                                    .onPrimaryContainer)))),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: 47.v,
                                    width: 110.h,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 37.h, vertical: 6.v),
                                    decoration: AppDecoration.fillGray.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.customBorderTL10),
                                    child: CustomImageView(
                                        imagePath: trophyImage,
                                        height: 35.adaptSize,
                                        width: 35.adaptSize,
                                        alignment: Alignment.center)))
                          ])),
                      SizedBox(height: 2.v),
                      Text(tOURNAMENTS,
                          style: CustomTextStyles.bodyMediumRacingSansOne
                              .copyWith(
                                  color: theme.colorScheme.onPrimaryContainer))
                    ]))));
  }

  /// Navigates to the profileScreen when the action is triggered.
  onTapFrameOne() {
    Get.toNamed(
      AppRoutes.profileScreen,
    );
  }

  /// Displays a dialog with the [SettingsDialog] content.
  onTapFrameFour() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: SettingsDialog(
        Get.put(
          SettingsController(),
        ),
      ),
    ));
  }

  /// Navigates to the exitThreeScreen when the action is triggered.
  onTapBtnLogoutOne() {
    Get.toNamed(
      AppRoutes.exitThreeScreen,
    );
  }

  /// Navigates to the notificationsScreen when the action is triggered.
  onTapNotifications() {
    Get.toNamed(
      AppRoutes.notificationsScreen,
    );
  }

  /// Navigates to the computerScreen when the action is triggered.
  onTapVsElevenColumn() {
    Get.toNamed(
      AppRoutes.computerScreen,
    );
  }

  /// Navigates to the passNPlayScreen when the action is triggered.
  onTapVsElevenColumn1() {
    Get.toNamed(
      AppRoutes.passNPlayScreen,
    );
  }

  /// Navigates to the paymentsOrRegistrationScreen when the action is triggered.
  onTapTournamentColumn() {
    Get.toNamed(
      AppRoutes.paymentsOrRegistrationScreen,
    );
  }

  /// Navigates to the tournamentScreen when the action is triggered.
  onTapTournamentColumn1() {
    Get.toNamed(
      AppRoutes.tournamentScreen,
    );
  }

  /// Navigates to the contractScreen when the action is triggered.
  onTapImgContractThirtyOne() {
    Get.toNamed(
      AppRoutes.contractScreen,
    );
  }

  /// Navigates to the rateUsScreen when the action is triggered.
  onTapImgImage() {
    Get.toNamed(
      AppRoutes.rateUsScreen,
    );
  }
}
