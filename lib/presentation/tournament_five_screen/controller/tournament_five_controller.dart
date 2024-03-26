import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/presentation/tournament_five_screen/models/tournament_five_model.dart';

/// A controller class for the TournamentFiveScreen.
///
/// This class manages the state of the TournamentFiveScreen, including the
/// current tournamentFiveModelObj
class TournamentFiveController extends GetxController {
  Rx<TournamentFiveModel> tournamentFiveModelObj = TournamentFiveModel().obs;
}
