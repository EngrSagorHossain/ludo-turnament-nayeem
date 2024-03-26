import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/presentation/pass_n_play_four_dialog/models/pass_n_play_four_model.dart';

/// A controller class for the PassNPlayFourDialog.
///
/// This class manages the state of the PassNPlayFourDialog, including the
/// current passNPlayFourModelObj
class PassNPlayFourController extends GetxController {
  Rx<PassNPlayFourModel> passNPlayFourModelObj = PassNPlayFourModel().obs;
}
