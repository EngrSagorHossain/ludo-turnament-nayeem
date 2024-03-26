import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/presentation/profile_two_dialog/models/profile_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ProfileTwoDialog.
///
/// This class manages the state of the ProfileTwoDialog, including the
/// current profileTwoModelObj
class ProfileTwoController extends GetxController {
  TextEditingController crownOneController = TextEditingController();

  Rx<ProfileTwoModel> profileTwoModelObj = ProfileTwoModel().obs;

  @override
  void onClose() {
    super.onClose();
    crownOneController.dispose();
  }
}
