import '../controller/exit_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ExitTwoScreen.
///
/// This class ensures that the ExitTwoController is created when the
/// ExitTwoScreen is first loaded.
class ExitTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExitTwoController());
  }
}
