import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [




                        _buildScreenTitle(
                          screenTitle: "Splash ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile ".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "notifications".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payments or Registration".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.paymentsOrRegistrationScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Payment method".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.paymentMethodScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Registration submit ".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.registrationSubmitScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Registration submit Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.registrationSubmitTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Computer".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.computerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "computer game".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.computerGameScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "EXIT".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.exitScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "rate us".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.rateUsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "EXIT Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.exitThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Home".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "contract".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.contractScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Pass n play".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.passNPlayScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Pass n play  game".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.passNPlayGameScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "EXIT One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.exitOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Tournament".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.tournamentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Tournament Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.tournamentThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Tournament Four".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.tournamentFourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Tournament Five".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.tournamentFiveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Tournament Six".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.tournamentSixScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Tournament  game".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.tournamentGameScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "EXIT Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.exitTwoScreen),
                        ),




                        
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
