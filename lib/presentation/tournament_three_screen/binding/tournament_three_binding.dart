import '../controller/tournament_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TournamentThreeScreen.
///
/// This class ensures that the TournamentThreeController is created when the
/// TournamentThreeScreen is first loaded.
class TournamentThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TournamentThreeController());
  }
}
