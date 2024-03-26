import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/presentation/computer_screen/models/computer_model.dart';

/// A controller class for the ComputerScreen.
///
/// This class manages the state of the ComputerScreen, including the
/// current computerModelObj
class ComputerController extends GetxController {
  Rx<ComputerModel> computerModelObj = ComputerModel().obs;

  Rx<String> radioGroup = "".obs;
}
