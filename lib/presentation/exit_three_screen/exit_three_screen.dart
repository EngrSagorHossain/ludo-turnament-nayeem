import 'controller/exit_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/widgets/custom_outlined_button.dart';

class ExitThreeScreen extends GetWidget<ExitThreeController> {
  const ExitThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 246.v),
                child: Column(
                    children: [SizedBox(height: 5.v), _buildAndroidLarge()]))));
  }

  /// Section Widget
  Widget _buildAndroidLarge() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 42.h, vertical: 8.v),
        decoration: AppDecoration.outlinePrimary4,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text("lbl_exit".tr, style: theme.textTheme.headlineSmall),
          SizedBox(height: 54.v),
          Padding(
              padding: EdgeInsets.only(left: 2.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomOutlinedButton(
                        width: 55.h,
                        text: "lbl_yes".tr,
                        margin: EdgeInsets.only(top: 1.v)),
                    CustomOutlinedButton(
                        width: 55.h,
                        text: "lbl_no".tr,
                        onPressed: () {
                          onTapNo();
                        })
                  ])),
          SizedBox(height: 44.v)
        ]));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapNo() {
    Get.toNamed(
      AppRoutes.bottomNavigationScreen,
    );
  }
}
