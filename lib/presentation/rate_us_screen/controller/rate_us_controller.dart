import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/presentation/rate_us_screen/models/rate_us_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the RateUsScreen.
///
/// This class manages the state of the RateUsScreen, including the
/// current rateUsModelObj
class RateUsController extends GetxController {
  TextEditingController rateLuduChampionshipController =
      TextEditingController();

  Rx<RateUsModel> rateUsModelObj = RateUsModel().obs;

  RateUsController(Rx<RateUsModel> obs);

  @override
  void onClose() {
    super.onClose();
    rateLuduChampionshipController.dispose();
  }
}
