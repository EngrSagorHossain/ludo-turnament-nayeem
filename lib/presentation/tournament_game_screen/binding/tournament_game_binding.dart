import '../controller/tournament_game_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TournamentGameScreen.
///
/// This class ensures that the TournamentGameController is created when the
/// TournamentGameScreen is first loaded.
class TournamentGameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TournamentGameController());
  }
}
