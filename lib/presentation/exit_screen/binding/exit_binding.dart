import '../controller/exit_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ExitScreen.
///
/// This class ensures that the ExitController is created when the
/// ExitScreen is first loaded.
class ExitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExitController());
  }
}
