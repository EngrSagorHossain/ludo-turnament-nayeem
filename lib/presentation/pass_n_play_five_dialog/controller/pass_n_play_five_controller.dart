import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/presentation/pass_n_play_five_dialog/models/pass_n_play_five_model.dart';

/// A controller class for the PassNPlayFiveDialog.
///
/// This class manages the state of the PassNPlayFiveDialog, including the
/// current passNPlayFiveModelObj
class PassNPlayFiveController extends GetxController {
  Rx<PassNPlayFiveModel> passNPlayFiveModelObj = PassNPlayFiveModel().obs;
}
