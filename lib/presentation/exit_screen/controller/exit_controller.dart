import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/presentation/exit_screen/models/exit_model.dart';

/// A controller class for the ExitScreen.
///
/// This class manages the state of the ExitScreen, including the
/// current exitModelObj
class ExitController extends GetxController {
  Rx<ExitModel> exitModelObj = ExitModel().obs;
}
