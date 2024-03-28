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

  //game logic started
  final listPointer4Player = [
    //a
    {'pointer': 'a1', 'value': 101, 'status': 'inactive', 'move': 'plus'},
    {'pointer': 'a2', 'value': 102, 'status': 'inactive', 'move': 'plus'},
    {'pointer': 'a3', 'value': 103, 'status': 'inactive', 'move': 'plus'},
    {'pointer': 'a4', 'value': 104, 'status': 'inactive', 'move': 'plus'},
    //b
    {'pointer': 'b1', 'value': '232', 'status': 'inactive', 'move': 'plus'},
    {'pointer': 'b2', 'value': '232', 'status': 'inactive', 'move': 'plus'},
    {'pointer': 'b3', 'value': '232', 'status': 'inactive', 'move': 'plus'},
    {'pointer': 'b4', 'value': '232', 'status': 'inactive', 'move': 'plus'},
    //half
    //c
    {'pointer': 'c1', 'value': 301, 'status': 'inactive', 'move': 'plus'},
    {'pointer': 'c2', 'value': 302, 'status': 'inactive', 'move': 'plus'},
    {'pointer': 'c3', 'value': 303, 'status': 'inactive', 'move': 'plus'},
    {'pointer': 'c4', 'value': 304, 'status': 'inactive', 'move': 'plus'},
    //d
    {'pointer': 'd1', 'value': '432', 'status': 'inactive', 'move': 'plus'},
    {'pointer': 'd2', 'value': '432', 'status': 'inactive', 'move': 'plus'},
    {'pointer': 'd3', 'value': '432', 'status': 'inactive', 'move': 'plus'},
    {'pointer': 'd4', 'value': '432', 'status': 'inactive', 'move': 'plus'},
  ].obs;

  final listPointer2Player = [
    //a
    {'pointer': 'a1', 'value': '132', 'status': 'inactive', 'move': 'plus'},
    {'pointer': 'a2', 'value': '132', 'status': 'inactive', 'move': 'plus'},
    {'pointer': 'a3', 'value': '132', 'status': 'inactive', 'move': 'plus'},
    {'pointer': 'a4', 'value': '132', 'status': 'inactive', 'move': 'plus'},
    //c
    {'pointer': 'c1', 'value': '332', 'status': 'inactive', 'move': 'plus'},
    {'pointer': 'c2', 'value': '332', 'status': 'inactive', 'move': 'plus'},
    {'pointer': 'c3', 'value': '332', 'status': 'inactive', 'move': 'plus'},
    {'pointer': 'c4', 'value': '332', 'status': 'inactive', 'move': 'plus'},
  ].obs;

  final positionListOfBox = [
    //for boat 1 initial
    {'pointer': 'a1', 'left': 91, 'bottom': 48, 'coteValue': 101},
    {'pointer': 'a2', 'left': 91, 'bottom': 89, 'coteValue': 102},
    {'pointer': 'a3', 'left': 48, 'bottom': 48, 'coteValue': 103},
    {'pointer': 'a4', 'left': 48, 'bottom': 89, 'coteValue': 104},
    //for boat 2 initial
    {'pointer': 'a1', 'left': 91, 'bottom': 312, 'coteValue': 101},
    {'pointer': 'a2', 'left': 91, 'bottom': 272, 'coteValue': 102},
    {'pointer': 'a3', 'left': 48, 'bottom': 312, 'coteValue': 103},
    {'pointer': 'a4', 'left': 48, 'bottom': 272, 'coteValue': 104},
     //for boat 3 initial
    {'pointer': 'c1', 'left': 270, 'bottom': 312, 'coteValue': 301},
    {'pointer': 'c2', 'left': 270, 'bottom': 272, 'coteValue': 302},
    {'pointer': 'c3', 'left': 314, 'bottom': 312, 'coteValue': 303},
    {'pointer': 'c4', 'left': 314, 'bottom': 272, 'coteValue': 304},

   
  ].obs;
}
