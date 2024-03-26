import '../controller/tournament_five_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TournamentFiveScreen.
///
/// This class ensures that the TournamentFiveController is created when the
/// TournamentFiveScreen is first loaded.
class TournamentFiveBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TournamentFiveController());
  }
}
