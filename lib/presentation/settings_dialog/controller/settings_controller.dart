import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/presentation/settings_dialog/models/settings_model.dart';

/// A controller class for the SettingsDialog.
///
/// This class manages the state of the SettingsDialog, including the
/// current settingsModelObj
class SettingsController extends GetxController {
  Rx<SettingsModel> settingsModelObj = SettingsModel().obs;
}
