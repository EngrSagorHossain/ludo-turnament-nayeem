import '../controller/contract_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ContractScreen.
///
/// This class ensures that the ContractController is created when the
/// ContractScreen is first loaded.
class ContractBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContractController());
  }
}
