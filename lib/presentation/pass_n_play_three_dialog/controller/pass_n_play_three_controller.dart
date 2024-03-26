import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/presentation/pass_n_play_three_dialog/models/pass_n_play_three_model.dart';

/// A controller class for the PassNPlayThreeDialog.
///
/// This class manages the state of the PassNPlayThreeDialog, including the
/// current passNPlayThreeModelObj
class PassNPlayThreeController extends GetxController {
  Rx<PassNPlayThreeModel> passNPlayThreeModelObj = PassNPlayThreeModel().obs;
}
