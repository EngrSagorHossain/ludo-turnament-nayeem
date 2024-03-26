import '../controller/computer_game_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ComputerGameScreen.
///
/// This class ensures that the ComputerGameController is created when the
/// ComputerGameScreen is first loaded.
class ComputerGameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ComputerGameController());
  }
}
