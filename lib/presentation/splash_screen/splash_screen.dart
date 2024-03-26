import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    delayedFunction();
  }

  void delayedFunction() {
    print("Starting...");
    // Delay for 3 seconds before executing the function
    Future.delayed(Duration(seconds: 3), () {
      Get.toNamed(AppRoutes.bottomNavigationScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup,
                height: 126.v,
                width: 235.h,
              ),
              SizedBox(height: 39.v),
              Text(
                "msg_powered_by_ludu".tr,
                style: CustomTextStyles.bodyLargePrimary,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }
}
