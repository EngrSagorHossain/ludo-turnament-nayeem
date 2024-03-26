import 'package:ludu_365/widgets/custom_icon_button.dart';

import 'controller/profile_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/widgets/custom_elevated_button.dart';
import 'package:ludu_365/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class ProfileTwoDialog extends StatelessWidget {
  ProfileTwoDialog(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfileTwoController controller;

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
                    side: BorderSide(
                        width: 2, color: Color(0xFFF4B30B)),
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Profile',
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
                  horizontal: 13.h,
                  vertical: 11.v,
                ),
                decoration: AppDecoration.outlinePrimary,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 50.v,
                      width: 80.h,
                      decoration: AppDecoration.outlinePrimary1,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgDc2ec5a57197441,
                        height: 50.v,
                        width: 80.h,
                        alignment: Alignment.center,
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Text(
                      "lbl_sakif_khan53553".tr,
                      style: CustomTextStyles
                          .titleMediumOnPrimaryContainer,
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "lbl_id_4645457".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                    SizedBox(height: 15.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(right: 11.h),
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 3.h,
                                vertical: 1.v,
                              ),
                              decoration: AppDecoration
                                  .fillErrorContainer
                                  .copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder3,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgMedal1,
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    margin: EdgeInsets.only(top: 1.v),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 3.h,
                                      top: 1.v,
                                      bottom: 3.v,
                                    ),
                                    child: Text(
                                      "lbl_0".tr,
                                      style: CustomTextStyles
                                          .labelLargeMedium13,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 8.v),
                              padding: EdgeInsets.symmetric(
                                horizontal: 11.h,
                                vertical: 1.v,
                              ),
                              decoration: AppDecoration
                                  .fillErrorContainer
                                  .copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder3,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgStar11,
                                    height: 10.adaptSize,
                                    width: 10.adaptSize,
                                    margin:
                                        EdgeInsets.only(bottom: 1.v),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 24.h),
                                    child: Text(
                                      "lbl_1_20".tr,
                                      style:
                                          theme.textTheme.labelSmall,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 13.h,
                          right: 43.h,
                        ),
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 3.v),
                              child: Text(
                                "msg_performance_rating".tr,
                                style: CustomTextStyles
                                    .labelMediumMedium,
                              ),
                            ),
                            Text(
                              "lbl_level".tr,
                              style:
                                  CustomTextStyles.labelLargeMedium,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 18.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 34.h),
                        child: Text(
                          "lbl_tournament_wins".tr,
                          style: CustomTextStyles.titleLargeYellow700,
                        ),
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 4.h,
                        right: 3.h,
                      ),
                      child: CustomTextFormField(
                        controller: controller.crownOneController,
                        hintText: "lbl_00".tr,
                        textInputAction: TextInputAction.done,
                        prefix: Container(
                          margin: EdgeInsets.fromLTRB(
                              30.h, 3.v, 14.h, 6.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgCrown1,
                            height: 35.adaptSize,
                            width: 35.adaptSize,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 44.v,
                        ),
                        contentPadding: EdgeInsets.only(
                          top: 8.v,
                          right: 30.h,
                          bottom: 8.v,
                        ),
                        borderDecoration:
                            TextFormFieldStyleHelper.fillGrayTL3,
                        fillColor: appTheme.gray800.withOpacity(0.1),
                      ),
                    ),
                    SizedBox(height: 23.v),
                    CustomElevatedButton(
                      height: 33.v,
                      width: 122.h,
                      text: "lbl_500000".tr,
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 12.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgTaka1,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                        ),
                      ),
                      buttonStyle: CustomButtonStyles.fillGray,
                      buttonTextStyle: CustomTextStyles.bodyMedium15,
                    ),
                    SizedBox(height: 82.v),
                  ],
                ),
              ),
                
              SizedBox(
                height: 38.v,
              ),
                
              Container(
                width: 290,
                height: 73,
                decoration: ShapeDecoration(
                  color: Color(0xFF1F1F1F),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: 3, color: Color(0xFFF4B30B)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Center(
                  child: Container(
                    width: 142,
                    height: 26,
                    decoration: ShapeDecoration(
                      color: Color(0xFF0083AD),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                            width: 1, color: Color(0xFF3A3A47)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Logout',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              ///////////////////////
                
              SizedBox(
                height: 14.v,
              ),
                
              Row(
               
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 3.v),
                      child: CustomIconButton(
                          height: 28.v,
                          width: 32.h,
                          padding: EdgeInsets.all(4.h),
                          onTap: () {
                            Get.toNamed(
                              AppRoutes.homeScreen,
                            );
                          },
                          child: CustomImageView(
                              imagePath: ImageConstant.imgGroup27))),
                  Padding(
                    padding: const EdgeInsets.only(left:60),
                    child: Container(
                        width: 99,
                        height: 26,
                        decoration: ShapeDecoration(
                          color: Color(0xFF0083AD),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 1, color: Color(0xFF3A3A47)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Image.asset(
                            "assets/images/facebook.png",
                            height: 15,
                            width: 15,
                          ),
                          Text(
                            'Share',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ])),
                  )
                ],
              ),
            ]),
      ),
    );
  }
}
