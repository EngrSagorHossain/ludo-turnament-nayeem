import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/presentation/tournament_six_screen/models/tournament_six_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TournamentSixScreen.
///
/// This class manages the state of the TournamentSixScreen, including the
/// current tournamentSixModelObj
class TournamentSixController extends GetxController {
  TextEditingController editTextController = TextEditingController();

  TextEditingController editTextController1 = TextEditingController();

  Rx<TournamentSixModel> tournamentSixModelObj = TournamentSixModel().obs;

  @override
  void onClose() {
    super.onClose();
    editTextController.dispose();
    editTextController1.dispose();
  }
}
