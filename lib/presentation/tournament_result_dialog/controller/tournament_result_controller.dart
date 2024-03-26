import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/presentation/tournament_result_dialog/models/tournament_result_model.dart';

/// A controller class for the TournamentResultDialog.
///
/// This class manages the state of the TournamentResultDialog, including the
/// current tournamentResultModelObj
class TournamentResultController extends GetxController {
  Rx<TournamentResultModel> tournamentResultModelObj =
      TournamentResultModel().obs;
}
