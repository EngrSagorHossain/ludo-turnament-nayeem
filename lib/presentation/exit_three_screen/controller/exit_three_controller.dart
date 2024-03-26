import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/presentation/exit_three_screen/models/exit_three_model.dart';

/// A controller class for the ExitThreeScreen.
///
/// This class manages the state of the ExitThreeScreen, including the
/// current exitThreeModelObj
class ExitThreeController extends GetxController {
  Rx<ExitThreeModel> exitThreeModelObj = ExitThreeModel().obs;
}
