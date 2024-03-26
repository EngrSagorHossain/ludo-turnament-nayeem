import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/presentation/exit_one_screen/models/exit_one_model.dart';

/// A controller class for the ExitOneScreen.
///
/// This class manages the state of the ExitOneScreen, including the
/// current exitOneModelObj
class ExitOneController extends GetxController {
  Rx<ExitOneModel> exitOneModelObj = ExitOneModel().obs;
}
