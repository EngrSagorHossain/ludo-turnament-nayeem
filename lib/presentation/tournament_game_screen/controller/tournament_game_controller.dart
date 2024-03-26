import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/presentation/tournament_game_screen/models/tournament_game_model.dart';

/// A controller class for the TournamentGameScreen.
///
/// This class manages the state of the TournamentGameScreen, including the
/// current tournamentGameModelObj
class TournamentGameController extends GetxController {
  Rx<TournamentGameModel> tournamentGameModelObj = TournamentGameModel().obs;
}
