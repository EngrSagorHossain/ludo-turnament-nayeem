import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/presentation/pass_n_play_two_dialog/models/pass_n_play_two_model.dart';

/// A controller class for the PassNPlayTwoDialog.
///
/// This class manages the state of the PassNPlayTwoDialog, including the
/// current passNPlayTwoModelObj
class PassNPlayTwoController extends GetxController {
  Rx<PassNPlayTwoModel> passNPlayTwoModelObj = PassNPlayTwoModel().obs;
}
