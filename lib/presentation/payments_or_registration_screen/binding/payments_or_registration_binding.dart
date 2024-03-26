import '../controller/payments_or_registration_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PaymentsOrRegistrationScreen.
///
/// This class ensures that the PaymentsOrRegistrationController is created when the
/// PaymentsOrRegistrationScreen is first loaded.
class PaymentsOrRegistrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PaymentsOrRegistrationController());
  }
}
