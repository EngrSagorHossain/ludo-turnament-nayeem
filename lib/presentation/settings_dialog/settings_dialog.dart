import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/widgets/custom_icon_button.dart';

import 'controller/settings_controller.dart';

// ignore: must_be_immutable
class SettingsDialog extends StatelessWidget {
  SettingsDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  SettingsController controller;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 118,
              height: 23,
              decoration: ShapeDecoration(
                color: Color(0x19F2F2F2),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 2, color: Color(0xFFF4B30B)),
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              child: Center(
                child: Text(
                  'Settings',
                  style: TextStyle(
                    color: Color(0xFFF3BA27),
                    fontSize: 15,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.v,
            ),
            Container(
              width: 290.h,
              padding: EdgeInsets.symmetric(
                horizontal: 17.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.outlinePrimary,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 33.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      right: 7.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 7.v),
                          child: Text(
                            "lbl_language".tr,
                            style: CustomTextStyles.titleSmallBold,
                            maxLines: 1,
                          ),
                        ),
                        Container(
                          width: 34.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 7.h,
                            vertical: 5.v,
                          ),
                          decoration: AppDecoration.outlinePrimary2.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder3,
                          ),
                          child: Text(
                            "lbl_eng_bn".tr,
                            style: CustomTextStyles.robotoPrimary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 19.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      right: 7.h,
                    ),
                    child: _buildVibrationSection(
                      vibration: "lbl_sound".tr,
                      vibrationImage: ImageConstant.imgVolume1,
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      right: 7.h,
                    ),
                    child: _buildVibrationSection(
                      vibration: "lbl_music".tr,
                      vibrationImage: ImageConstant.imgMusicalNoteSymbol,
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      right: 7.h,
                    ),
                    child: _buildVibrationSection(
                      vibration: "lbl_notification".tr,
                      vibrationImage: ImageConstant.imgNotificationIcon,
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      right: 7.h,
                    ),
                    child: _buildVibrationSection(
                      vibration: "lbl_vibration".tr,
                      vibrationImage: ImageConstant.imgVibration1,
                    ),
                  ),
                  SizedBox(height: 144.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(left: 13.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "lbl_version".tr,
                            style: CustomTextStyles.titleSmallBold,
                          ),
                          Text(
                            "lbl_8_1_0_275".tr,
                            style: CustomTextStyles.titleMediumPrimary,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 290,
              height: 40,
              decoration: ShapeDecoration(
                color: Color(0xFF0083AD),
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFF3A3A47)),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 70),
                    child: Text(
                      'Find us on',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/images/facebook.png",
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(
                    width: 10.v,
                  ),
                  Image.asset(
                    "assets/images/instagram.png",
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(
                    width: 10.v,
                  ),
                  Image.asset(
                    "assets/images/playstore.png",
                    height: 20,
                    width: 20,
                  ),
                  SizedBox(
                    width: 10.v,
                  ),
                  Image.asset(
                    "assets/images/youtube2.png",
                    height: 20,
                    width: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.v,
            ),
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
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildVibrationSection({
    required String vibration,
    required String vibrationImage,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 2.v,
            bottom: 3.v,
          ),
          child: Text(
            vibration,
            style: CustomTextStyles.titleSmallBold.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        ),
        Container(
          height: 24.v,
          width: 34.h,
          padding: EdgeInsets.symmetric(
            horizontal: 7.h,
            vertical: 2.v,
          ),
          decoration: AppDecoration.outlinePrimary2.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder3,
          ),
          child: CustomImageView(
            imagePath: vibrationImage,
            height: 15.adaptSize,
            width: 15.adaptSize,
            alignment: Alignment.bottomLeft,
          ),
        ),
      ],
    );
  }
}
