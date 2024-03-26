import '../controller/registration_submit_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RegistrationSubmitTwoScreen.
///
/// This class ensures that the RegistrationSubmitTwoController is created when the
/// RegistrationSubmitTwoScreen is first loaded.
class RegistrationSubmitTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationSubmitTwoController());
  }
}
