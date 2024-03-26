import 'controller/tournament_game_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/widgets/custom_icon_button.dart';

class TournamentGameScreen extends GetWidget<TournamentGameController> {
  const TournamentGameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
              
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 14.h),

                          child: CustomIconButton(
                              height: 28.v,
                              width: 32.h,
                              padding: EdgeInsets.all(4.h),
                              onTap: () {
                                onTapBtnIconButton();
                              },
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup27))),

                                  
                      Spacer(),
                      _buildOneSection(),
                      SizedBox(height: 68.v),


                      
                      _buildViewSection(),
                      SizedBox(height: 5.v),
                      Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: Row(children: [
                            SizedBox(
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                child: Stack(
                                    alignment: Alignment.topLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: GestureDetector(
                                              onTap: () {
                                                onTapView();
                                              },
                                              child: Container(
                                                  height: 20.adaptSize,
                                                  width: 20.adaptSize,
                                                  decoration: BoxDecoration(
                                                      color: theme
                                                          .colorScheme.onPrimary
                                                          .withOpacity(1),
                                                      border: Border.all(
                                                          color: theme
                                                              .colorScheme
                                                              .primary,
                                                          width: 1.h))))),
                                      CustomImageView(
                                          imagePath: ImageConstant.imgSmile1,
                                          height: 15.adaptSize,
                                          width: 15.adaptSize,
                                          alignment: Alignment.topLeft,
                                          margin: EdgeInsets.only(
                                              left: 2.h, top: 2.v))
                                    ])),
                            Container(
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                margin: EdgeInsets.only(left: 6.h),
                                child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: GestureDetector(
                                              onTap: () {
                                                onTapView1();
                                              },
                                              child: Container(
                                                  height: 20.adaptSize,
                                                  width: 20.adaptSize,
                                                  decoration: BoxDecoration(
                                                      color: theme
                                                          .colorScheme.onPrimary
                                                          .withOpacity(1),
                                                      border: Border.all(
                                                          color: theme
                                                              .colorScheme
                                                              .primary,
                                                          width: 1.h))))),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgMicrophone21,
                                          height: 15.adaptSize,
                                          width: 15.adaptSize,
                                          alignment: Alignment.centerLeft,
                                          margin: EdgeInsets.only(left: 2.h))
                                    ]))
                          ])),
                      SizedBox(height: 5.v),
                      _buildMapsAndFlagsOne(),
                      SizedBox(height: 21.v)
                    ]))));
  }

  /// Section Widget
  Widget _buildOneSection() {
    return SizedBox(
        height: 360.adaptSize,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.img360F494282200,
              height: 360.adaptSize,
              width: 360.adaptSize,
              alignment: Alignment.center),


          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.only(left: 48.h, right: 42.h),

                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_4645457".tr,
                            style: theme.textTheme.bodyMedium),
                        SizedBox(height: 320.v),


                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 48.h, right: 42.h,bottom: 33.h),
                              child: Text("lbl_5775457".tr,
                                  style: theme.textTheme.bodyMedium),
                            ))


                      ])))

        ]));
  }

  /// Section Widget
  Widget _buildViewSection() {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      height: 50.adaptSize,
                      width: 50.adaptSize,
                      child: Stack(alignment: Alignment.center, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                height: 50.adaptSize,
                                width: 50.adaptSize,
                                decoration: BoxDecoration(
                                    color: appTheme.blueGray100))),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                height: 50.adaptSize,
                                width: 50.adaptSize,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(ImageConstant
                                            .imgDc2ec5a5719744150x50),
                                        fit: BoxFit.cover))))
                      ])),
                  Container(
                      height: 50.adaptSize,
                      width: 50.adaptSize,
                      decoration: AppDecoration.fillBlueGray,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgUnnamed2,
                          height: 50.adaptSize,
                          width: 50.adaptSize,
                          alignment: Alignment.center))
                ])));
  }

  /// Section Widget
  Widget _buildMapsAndFlagsOne() {
    return Align(
        alignment: Alignment.center,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 14.h),
            padding: EdgeInsets.symmetric(horizontal: 6.h),
            decoration: AppDecoration.outlinePrimary5
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder3),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 2.h, top: 7.v),
                      child: _buildMapsAndFlagsSection(
                          mapsAndFlagsThreeImage:
                              ImageConstant.imgMapsAndFlags140x40)),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 8.h, top: 11.v, bottom: 18.v),
                      child: Text("lbl_sakif_khan".tr,
                          style: theme.textTheme.labelLarge)),
                  Spacer(),
                  CustomIconButton(
                      height: 44.v,
                      width: 46.h,
                      padding: EdgeInsets.all(6.h),
                      decoration: IconButtonStyleHelper.gradientYellowAToPinkA,
                      child:
                          CustomImageView(imagePath: ImageConstant.imgDice22)),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 13.h, top: 11.v, bottom: 17.v),
                      child: Text("lbl_tamim_khan".tr,
                          style: theme.textTheme.labelLarge)),
                  Padding(
                      padding: EdgeInsets.only(left: 29.h, top: 7.v),
                      child: _buildMapsAndFlagsSection(
                          mapsAndFlagsThreeImage:
                              ImageConstant.imgMapsAndFlags3))
                ])));
  }

  /// Common widget
  Widget _buildMapsAndFlagsSection({required String mapsAndFlagsThreeImage}) {
    return Column(children: [
      CustomImageView(
          imagePath: mapsAndFlagsThreeImage,
          height: 25.adaptSize,
          width: 25.adaptSize),
      SizedBox(height: 2.v),
      CustomImageView(
          imagePath: ImageConstant.imgDots1, height: 9.v, width: 15.h)
    ]);
  }

  /// Navigates to the exitTwoScreen when the action is triggered.
  onTapBtnIconButton() {
    Get.toNamed(
      AppRoutes.exitTwoScreen,
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapView() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapView1() {
    Get.toNamed(
      AppRoutes.homeScreen,
    );
  }
}
