import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/presentation/payments_or_registration_screen/models/payments_or_registration_model.dart';

/// A controller class for the PaymentsOrRegistrationScreen.
///
/// This class manages the state of the PaymentsOrRegistrationScreen, including the
/// current paymentsOrRegistrationModelObj
class PaymentsOrRegistrationController extends GetxController {
  Rx<PaymentsOrRegistrationModel> paymentsOrRegistrationModelObj =
      PaymentsOrRegistrationModel().obs;
}
