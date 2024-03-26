import '../controller/computer_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ComputerScreen.
///
/// This class ensures that the ComputerController is created when the
/// ComputerScreen is first loaded.
class ComputerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ComputerController());
  }
}
