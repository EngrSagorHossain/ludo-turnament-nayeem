import 'package:ludu_365/widgets/custom_icon_button.dart';

import 'controller/tournament_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class TournamentTwoDialog extends StatelessWidget {
  TournamentTwoDialog(this.controller, {Key? key}) : super(key: key);

  TournamentTwoController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 290.h,
            padding: EdgeInsets.symmetric(horizontal: 53.h, vertical: 10.v),
            decoration: AppDecoration.outlinePrimary,
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Text("lbl_select_game".tr, style: theme.textTheme.titleMedium),
              SizedBox(height: 36.v),
              CustomOutlinedButton(
                  height: 42.v,
                  text: "lbl_first_round".tr,
                  buttonStyle: CustomButtonStyles.outlinePrimaryTL102,
                  buttonTextStyle:
                      CustomTextStyles.titleMediumOnPrimaryContainer_1,
                  onPressed: () {
                    onTapFirstRound();
                  }),
              SizedBox(height: 29.v),
              CustomOutlinedButton(
                  height: 42.v,
                  text: "lbl_final_round".tr,
                  rightIcon: Container(
                      margin: EdgeInsets.only(),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgLock2,
                          height: 25.adaptSize,
                          width: 25.adaptSize)),
                  buttonStyle: CustomButtonStyles.outlinePrimaryTL102,
                  buttonTextStyle:
                      CustomTextStyles.titleMediumOnPrimaryContainer_1,
                  onPressed: () {
                    onTapFinalRound();
                  }),
              SizedBox(
                height: 10,
              ),
            ]),
          ),
          SizedBox(height: 10,),

          Padding(
              padding: EdgeInsets.only(right: 240),
              child: CustomIconButton(
                  height: 28.v,
                  width: 32.h,
                  padding: EdgeInsets.all(4.h),
                  onTap: () {
                    onTapBtnIconButton();
                  },
                  child: CustomImageView(imagePath: ImageConstant.imgGroup27))),





        ],
      ),
    );
  }

  /// Navigates to the tournamentThreeScreen when the action is triggered.
  onTapFirstRound() {
    Get.toNamed(
      AppRoutes.tournamentThreeScreen,
    );
  }

  /// Navigates to the tournamentFourScreen when the action is triggered.
  onTapFinalRound() {
    Get.toNamed(
      AppRoutes.tournamentFourScreen,
    );
  }
}

onTapBtnIconButton() {
 Get.back();
}
