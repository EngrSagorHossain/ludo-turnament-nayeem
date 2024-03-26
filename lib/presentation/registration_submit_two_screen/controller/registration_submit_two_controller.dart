import 'package:flutter/material.dart';
import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/presentation/home_screen/controller/auth_controller.dart';
import 'package:ludu_365/presentation/registration_submit_screen/controller/registration_submit_controller.dart';
import 'package:ludu_365/presentation/registration_submit_two_screen/models/registration_submit_two_model.dart';

/// A controller class for the RegistrationSubmitTwoScreen.
///
/// This class manages the state of the RegistrationSubmitTwoScreen, including the
/// current registrationSubmitTwoModelObj
class RegistrationSubmitTwoController extends GetxController {
  TextEditingController usernameRowController = TextEditingController();

  TextEditingController passwordRowController = TextEditingController();

  TextEditingController confirmPasswordRowController = TextEditingController();

  Rx<RegistrationSubmitTwoModel> registrationSubmitTwoModelObj =
      RegistrationSubmitTwoModel().obs;
  AuthController authController = Get.put(AuthController());
  RegistrationSubmitController registrationSubmitController = Get.find();
  @override
  void onClose() {
    super.onClose();
    usernameRowController.dispose();
    passwordRowController.dispose();
    confirmPasswordRowController.dispose();
  }
}
