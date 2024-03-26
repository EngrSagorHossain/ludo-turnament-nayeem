import '../controller/tournament_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TournamentFourScreen.
///
/// This class ensures that the TournamentFourController is created when the
/// TournamentFourScreen is first loaded.
class TournamentFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TournamentFourController());
  }
}
