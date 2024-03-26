import '../controller/tournament_six_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TournamentSixScreen.
///
/// This class ensures that the TournamentSixController is created when the
/// TournamentSixScreen is first loaded.
class TournamentSixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TournamentSixController());
  }
}
