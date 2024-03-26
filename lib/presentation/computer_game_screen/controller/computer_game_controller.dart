import 'dart:async';

import 'package:just_audio/just_audio.dart';
import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/presentation/computer_game_screen/models/computer_game_model.dart';

/// A controller class for the ComputerGameScreen.
///
/// This class manages the state of the ComputerGameScreen, including the
/// current computerGameModelObj
class ComputerGameController extends GetxController {
  Rx<ComputerGameModel> computerGameModelObj = ComputerGameModel().obs;

  var randomNumber = 2.obs; // Observable to store the random number
  late Timer _timer; // Timer to generate random numbers

  void startGeneratingRandomNumbers() {
    playDice();
    _timer = Timer.periodic(Duration(microseconds: 200), (timer) {
      // Generate random number between 1 to 6
      randomNumber.value = 1 + (DateTime.now().millisecondsSinceEpoch % 6);
      print(randomNumber.value);
    });

    Future.delayed(Duration(seconds: 2), () {
      _timer.cancel();
    });
  }

  final audioDicePlayer = AudioPlayer();

  void playDice() async {
    await audioDicePlayer.setAsset('assets/audios/dice-142528.mp3');
    await audioDicePlayer.play();
  }
}
