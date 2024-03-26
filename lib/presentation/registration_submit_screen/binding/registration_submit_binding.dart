import '../controller/registration_submit_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RegistrationSubmitScreen.
///
/// This class ensures that the RegistrationSubmitController is created when the
/// RegistrationSubmitScreen is first loaded.
class RegistrationSubmitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegistrationSubmitController());
  }
}
