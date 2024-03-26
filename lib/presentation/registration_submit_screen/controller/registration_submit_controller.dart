import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/presentation/registration_submit_screen/models/registration_submit_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RegistrationSubmitScreen.
///
/// This class manages the state of the RegistrationSubmitScreen, including the
/// current registrationSubmitModelObj
class RegistrationSubmitController extends GetxController {
  TextEditingController nameRowController = TextEditingController();

  TextEditingController addressRowController = TextEditingController();

  TextEditingController phoneNumberRowController = TextEditingController();

  TextEditingController transactionIdRowController = TextEditingController();

  Rx<RegistrationSubmitModel> registrationSubmitModelObj =
      RegistrationSubmitModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameRowController.dispose();
    addressRowController.dispose();
    phoneNumberRowController.dispose();
    transactionIdRowController.dispose();
  }
}
