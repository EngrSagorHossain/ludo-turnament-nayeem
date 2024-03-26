import '../controller/pass_n_play_game_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PassNPlayGameScreen.
///
/// This class ensures that the PassNPlayGameController is created when the
/// PassNPlayGameScreen is first loaded.
class PassNPlayGameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PassNPlayGameController());
  }
}
