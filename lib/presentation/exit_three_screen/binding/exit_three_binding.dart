import '../controller/exit_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ExitThreeScreen.
///
/// This class ensures that the ExitThreeController is created when the
/// ExitThreeScreen is first loaded.
class ExitThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExitThreeController());
  }
}
