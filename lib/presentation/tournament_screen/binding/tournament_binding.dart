import '../controller/tournament_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TournamentScreen.
///
/// This class ensures that the TournamentController is created when the
/// TournamentScreen is first loaded.
class TournamentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TournamentController());
  }
}
