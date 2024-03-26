import '../tournament_three_screen/widgets/levelone_item_widget.dart';
import 'controller/tournament_three_controller.dart';
import 'models/levelone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/widgets/custom_elevated_button.dart';
import 'package:ludu_365/widgets/custom_icon_button.dart';
import 'package:ludu_365/presentation/tournament_two_dialog/tournament_two_dialog.dart';
import 'package:ludu_365/presentation/tournament_two_dialog/controller/tournament_two_controller.dart';

class TournamentThreeScreen extends GetWidget<TournamentThreeController> {
  const TournamentThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: const EdgeInsets.only(left: 27),
      child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 55.h),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildAndroidLarge(),
                SizedBox(height: 29.v),
                Padding(
                    padding: EdgeInsets.only(left: 4.h),
                    child: Row(children: [
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
                      CustomElevatedButton(
                          width: 94.h,
                          text: "lbl_join".tr,
                          margin: EdgeInsets.only(left: 62.h),
                          buttonStyle: CustomButtonStyles.outlineTealE,
                          onPressed: () {
                            onTapJoin();
                          })
                    ])),
                SizedBox(height: 5.v)
              ])),
    )));
  }

  /// Section Widget
  Widget _buildAndroidLarge() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 28.h, vertical: 10.v),
        decoration: AppDecoration.outlinePrimary4,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text("lbl_first_round2".tr, style: theme.textTheme.titleMedium),
          SizedBox(height: 18.v),
          Obx(() => Wrap(
              runSpacing: 37.v,
              spacing: 37.h,
              children: List<Widget>.generate(
                  controller.tournamentThreeModelObj.value.leveloneItemList
                      .value.length, (index) {
                LeveloneItemModel model = controller.tournamentThreeModelObj
                    .value.leveloneItemList.value[index];
                return LeveloneItemWidget(model);
              }))),
          SizedBox(height: 11.v)
        ]));
  }

  /// Displays a dialog with the [TournamentTwoDialog] content.
  onTapBtnIconButton() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: TournamentTwoDialog(
        Get.put(
          TournamentTwoController(TournamentTwoController),
        ),
      ),
    ));
  }

  /// Navigates to the tournamentFiveScreen when the action is triggered.
  onTapJoin() {
    Get.toNamed(
      AppRoutes.tournamentFiveScreen,
    );
  }
}
