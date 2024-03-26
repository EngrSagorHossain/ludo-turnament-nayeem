import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/presentation/contract_screen/models/contract_model.dart';

/// A controller class for the ContractScreen.
///
/// This class manages the state of the ContractScreen, including the
/// current contractModelObj
class ContractController extends GetxController {
  Rx<ContractModel> contractModelObj = ContractModel().obs;
}
