import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/presentation/tournament_two_dialog/models/tournament_two_model.dart';

/// A controller class for the TournamentTwoDialog.
///
/// This class manages the state of the TournamentTwoDialog, including the
/// current tournamentTwoModelObj
class TournamentTwoController extends GetxController {
  Rx<TournamentTwoModel> tournamentTwoModelObj = TournamentTwoModel().obs;

  TournamentTwoController(Type tournamentTwoModel);
}
