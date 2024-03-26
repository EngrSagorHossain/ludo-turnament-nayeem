import '../controller/pass_n_play_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PassNPlayScreen.
///
/// This class ensures that the PassNPlayController is created when the
/// PassNPlayScreen is first loaded.
class PassNPlayBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PassNPlayController());
  }
}
