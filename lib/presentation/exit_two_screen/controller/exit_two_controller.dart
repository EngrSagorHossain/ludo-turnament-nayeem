import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/presentation/exit_two_screen/models/exit_two_model.dart';

/// A controller class for the ExitTwoScreen.
///
/// This class manages the state of the ExitTwoScreen, including the
/// current exitTwoModelObj
class ExitTwoController extends GetxController {
  Rx<ExitTwoModel> exitTwoModelObj = ExitTwoModel().obs;
}
