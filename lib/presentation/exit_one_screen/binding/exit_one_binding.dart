import '../controller/exit_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ExitOneScreen.
///
/// This class ensures that the ExitOneController is created when the
/// ExitOneScreen is first loaded.
class ExitOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExitOneController());
  }
}
