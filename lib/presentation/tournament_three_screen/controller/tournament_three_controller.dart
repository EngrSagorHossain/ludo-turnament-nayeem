import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/presentation/tournament_three_screen/models/tournament_three_model.dart';

/// A controller class for the TournamentThreeScreen.
///
/// This class manages the state of the TournamentThreeScreen, including the
/// current tournamentThreeModelObj
class TournamentThreeController extends GetxController {
  Rx<TournamentThreeModel> tournamentThreeModelObj = TournamentThreeModel().obs;
}
