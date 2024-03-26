import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/presentation/computer_game_screen/models/computer_game_model.dart';

/// A controller class for the ComputerGameScreen.
///
/// This class manages the state of the ComputerGameScreen, including the
/// current computerGameModelObj
class ComputerGameController extends GetxController {
  Rx<ComputerGameModel> computerGameModelObj = ComputerGameModel().obs;
}
