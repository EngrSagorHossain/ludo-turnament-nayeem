import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/presentation/registration_submit_two_screen/models/registration_submit_two_model.dart';
import 'package:flutter/material.dart';

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

  @override
  void onClose() {
    super.onClose();
    usernameRowController.dispose();
    passwordRowController.dispose();
    confirmPasswordRowController.dispose();
  }
}
