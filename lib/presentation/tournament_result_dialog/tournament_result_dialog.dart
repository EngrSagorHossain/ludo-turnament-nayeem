import 'controller/tournament_result_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';

// ignore_for_file: must_be_immutable
class TournamentResultDialog extends StatelessWidget {
  TournamentResultDialog(this.controller, {Key? key}) : super(key: key);

  TournamentResultController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 290.h,
        padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 10.v),
        decoration: AppDecoration.outlinePrimary,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text("lbl_level_12".tr, style: theme.textTheme.titleMedium),
          SizedBox(height: 20.v),
          Text("msg_ludu_championship".tr, style: CustomTextStyles.bodyLarge16),
          SizedBox(height: 7.v),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 22.h),
                  child: Text("msg_best_tournaments".tr,
                      style: CustomTextStyles.bodySmallOnPrimaryContainer))),
          SizedBox(height: 14.v),
          Text("lbl_congratulation".tr, style: CustomTextStyles.bodyLarge16),
          SizedBox(height: 3.v),
          Text("lbl_level_1".tr, style: CustomTextStyles.bodyLarge16),
          SizedBox(height: 40.v),
          Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 11.h, vertical: 4.v),
                        decoration: AppDecoration.outlinePrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8),
                        child: Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgDc2ec5a57197441,
                              height: 15.v,
                              width: 25.h),
                          Padding(
                              padding: EdgeInsets.only(left: 13.h, bottom: 2.v),
                              child: Text("lbl_sakif_khan".tr,
                                  style: theme.textTheme.labelMedium))
                        ])),
                    Padding(
                        padding: EdgeInsets.only(top: 9.v, bottom: 5.v),
                        child: Text("lbl_winner".tr,
                            style: theme.textTheme.labelLarge)),
                    GestureDetector(
                        onTap: () {
                          onTapTxtNext();
                        },
                        child: Container(
                            width: 39.h,
                            margin: EdgeInsets.only(top: 7.v, bottom: 6.v),
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.h, vertical: 1.v),
                            decoration: AppDecoration.fillLightBlue.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder3),
                            child: Text("lbl_next".tr,
                                style: theme.textTheme.labelMedium)))
                  ])),
          SizedBox(height: 30.v),
          Padding(
              padding: EdgeInsets.only(left: 11.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 129.h,
                        padding: EdgeInsets.symmetric(vertical: 4.v),
                        decoration: AppDecoration.outlinePrimary7.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgUnnamed2,
                                  height: 16.v,
                                  width: 25.h),
                              Padding(
                                  padding: EdgeInsets.only(bottom: 2.v),
                                  child: Text("lbl_tamim_khan".tr,
                                      style: theme.textTheme.labelMedium))
                            ])),
                    Padding(
                        padding: EdgeInsets.only(top: 8.v, bottom: 6.v),
                        child: Text("lbl_loser".tr,
                            style: theme.textTheme.labelLarge)),
                    GestureDetector(
                        onTap: () {
                          onTapTxtNext1();
                        },
                        child: Container(
                            width: 39.h,
                            margin: EdgeInsets.only(top: 6.v, bottom: 7.v),
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.h, vertical: 2.v),
                            decoration: AppDecoration.fillLightBlue.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder3),
                            child: Text("lbl_next".tr,
                                style: theme.textTheme.labelMedium)))
                  ])),
          SizedBox(height: 18.v)
        ]));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapTxtNext() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapTxtNext1() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }
}
