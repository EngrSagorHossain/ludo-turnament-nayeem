import 'dart:async';

import 'package:just_audio/just_audio.dart';
import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/presentation/computer_game_screen/models/computer_game_model.dart';

class ComputerGameController extends GetxController {
  Rx<ComputerGameModel> computerGameModelObj = ComputerGameModel().obs;

  var randomNumber = 2.obs; // Observable to store the random number
  late Timer _timer; // Timer to generate random numbers

  void startGeneratingRandomNumbers() {
    playDice();
    _timer = Timer.periodic(Duration(microseconds: 200), (timer) {
      // Generate random number between 1 to 6
      randomNumber.value = 1 + (DateTime.now().millisecondsSinceEpoch % 6);
    });
    Future.delayed(Duration(seconds: 2), () {
      _timer.cancel();
    });
  }

  //logic started
  void setPositionValueAndPointer({required String pointer}) {
    print(pointer);
    positionListOfBox.forEach((player) {
      if (player['pointer'] == pointer) {
        print(player);
        if (player['coteValue'] != null && player['coteValue'] is int) {
          int coteValue = player['coteValue'] as int;
          print(coteValue);

          if (coteValue > 100 && coteValue < 105) {
            player['coteValue'] = 132;
          }
          if (coteValue > 200 && coteValue < 205) {
            player['coteValue'] = 232;
          }
          if (coteValue > 300 && coteValue < 305) {
            player['coteValue'] = 332;
          }
          if (coteValue > 400 && coteValue < 405) {
            player['coteValue'] = 432;
          }
          //initial value setup done

          //set final value

          listPointer4Player.forEach((element) {
            if (element['pointer'] == pointer && element['move'] == 'minus') {
              print(element);
              player['coteValue'] =
                  (player['coteValue'] as int) - randomNumber.value;
            }
            if (element['pointer'] == pointer && element['move'] == 'plus') {
              player['coteValue'] =
                  (player['coteValue'] as int) + randomNumber.value;
            }
          });

          print(player['coteValue']);

          int firstDigit =
              int.parse(player['coteValue'].toString().substring(0, 1));
          int lastTwoDigits = int.parse(player['coteValue']
              .toString()
              .substring(player['coteValue'].toString().length - 2));

          print(firstDigit);
          print(lastTwoDigits);
          int extraValue = 0;
          if (lastTwoDigits > 36) {
            listPointer4Player.forEach((element) {
              if (element['pointer'] == pointer) {
                element['move'] = 'minus';
              }
              print(element);
            });
            switch (firstDigit) {
              case 1:
                extraValue = int.parse(player['coteValue'].toString()) - 136;
                player['coteValue'] = 216;
                break;
              case 2:
                extraValue = int.parse(player['coteValue'].toString()) - 236;
                player['coteValue'] = 316;
                break;
              case 1:
                extraValue = int.parse(player['coteValue'].toString()) - 336;
                player['coteValue'] = 416;
                break;
              case 2:
                extraValue = int.parse(player['coteValue'].toString()) - 436;
                player['coteValue'] = 116;
                break;
              default:
                break;
            }
          }

          // listPointer4Player.forEach((elements) {
          //   if (elements['pointer'] == pointer) {
          //     if (elements['status'] == 'inactive' &&
          //         elements['move'] == 'plus') {
          //       player['coteValue'] =
          //           int.parse(player['coteValue'].toString()) + extraValue;
          //     }
          //     if (elements['status'] == 'inactive' &&
          //         elements['move'] == 'minus') {
          //       player['coteValue'] =
          //           int.parse(player['coteValue'].toString()) - extraValue + 1;
          //     }
          //   }
          // });

          //update the pointer position
          boxPointerList.where((boxPointer) {
            if (player['coteValue'] == boxPointer['coteValue']) {
              print(boxPointer);
              // Perform operations on player and boxPointer
              player['left'] = boxPointer['left']!;
              player['bottom'] = boxPointer['bottom']!;
              // print(object)
              positionListOfBox.refresh();
              return true;
            } else {
              return false;
            }
          }).toList();
        }
      }
    });
  }

  //logic end

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
    {'pointer': 'b1', 'value': 232, 'status': 'inactive', 'move': 'plus'},
    {'pointer': 'b2', 'value': 232, 'status': 'inactive', 'move': 'plus'},
    {'pointer': 'b3', 'value': 232, 'status': 'inactive', 'move': 'plus'},
    {'pointer': 'b4', 'value': 232, 'status': 'inactive', 'move': 'plus'},
    //half
    //c
    {'pointer': 'c1', 'value': 301, 'status': 'inactive', 'move': 'plus'},
    {'pointer': 'c2', 'value': 302, 'status': 'inactive', 'move': 'plus'},
    {'pointer': 'c3', 'value': 303, 'status': 'inactive', 'move': 'plus'},
    {'pointer': 'c4', 'value': 304, 'status': 'inactive', 'move': 'plus'},
    //d
    {'pointer': 'd1', 'value': 432, 'status': 'inactive', 'move': 'plus'},
    {'pointer': 'd2', 'value': 432, 'status': 'inactive', 'move': 'plus'},
    {'pointer': 'd3', 'value': 432, 'status': 'inactive', 'move': 'plus'},
    {'pointer': 'd4', 'value': 432, 'status': 'inactive', 'move': 'plus'},
  ].obs;

  // final listPointer2Player = [
  //   //a
  //   {'pointer': 'a1', 'value': '132', 'status': 'inactive', 'move': 'plus'},
  //   {'pointer': 'a2', 'value': '132', 'status': 'inactive', 'move': 'plus'},
  //   {'pointer': 'a3', 'value': '132', 'status': 'inactive', 'move': 'plus'},
  //   {'pointer': 'a4', 'value': '132', 'status': 'inactive', 'move': 'plus'},
  //   //c
  //   {'pointer': 'c1', 'value': '332', 'status': 'inactive', 'move': 'plus'},
  //   {'pointer': 'c2', 'value': '332', 'status': 'inactive', 'move': 'plus'},
  //   {'pointer': 'c3', 'value': '332', 'status': 'inactive', 'move': 'plus'},
  //   {'pointer': 'c4', 'value': '332', 'status': 'inactive', 'move': 'plus'},
  // ].obs;

  final positionListOfBox = [
    //for boat 1 initial
    {'pointer': 'a1', 'left': 91, 'bottom': 48, 'coteValue': 101},
    {'pointer': 'a2', 'left': 91, 'bottom': 89, 'coteValue': 102},
    {'pointer': 'a3', 'left': 48, 'bottom': 48, 'coteValue': 103},
    {'pointer': 'a4', 'left': 48, 'bottom': 89, 'coteValue': 104},
    //for boat 2 initial
    {'pointer': 'b1', 'left': 91, 'bottom': 312, 'coteValue': 201},
    {'pointer': 'b2', 'left': 91, 'bottom': 272, 'coteValue': 202},
    {'pointer': 'b3', 'left': 48, 'bottom': 312, 'coteValue': 203},
    {'pointer': 'b4', 'left': 48, 'bottom': 272, 'coteValue': 204},
    //for boat 3 initial
    {'pointer': 'c1', 'left': 270, 'bottom': 312, 'coteValue': 301},
    {'pointer': 'c2', 'left': 270, 'bottom': 272, 'coteValue': 302},
    {'pointer': 'c3', 'left': 314, 'bottom': 312, 'coteValue': 303},
    {'pointer': 'c4', 'left': 314, 'bottom': 272, 'coteValue': 304},
    //for boat 4 initial
    {'pointer': 'd1', 'left': 270, 'bottom': 91, 'coteValue': 401},
    {'pointer': 'd2', 'left': 270, 'bottom': 48, 'coteValue': 402},
    {'pointer': 'd3', 'left': 314, 'bottom': 91, 'coteValue': 403},
    {'pointer': 'd4', 'left': 314, 'bottom': 48, 'coteValue': 404},
  ].obs;

  final boxPointerList = [
    //start line A
    //value for box 100 contain 131
    {'coteValue': 131, 'left': 156, 'bottom': 10},
    {'coteValue': 132, 'left': 156, 'bottom': 35},
    {'coteValue': 133, 'left': 156, 'bottom': 60},
    {'coteValue': 134, 'left': 156, 'bottom': 85},
    {'coteValue': 135, 'left': 156, 'bottom': 110},
    {'coteValue': 136, 'left': 156, 'bottom': 135},
    //value for box 100 contain 121
    {'coteValue': 121, 'left': 180, 'bottom': 10},
    {'coteValue': 122, 'left': 180, 'bottom': 35},
    {'coteValue': 123, 'left': 180, 'bottom': 60},
    {'coteValue': 124, 'left': 180, 'bottom': 85},
    {'coteValue': 125, 'left': 180, 'bottom': 110},
    {'coteValue': 126, 'left': 180, 'bottom': 135},
    //value for box 100 contain 111
    {'coteValue': 111, 'left': 205, 'bottom': 10},
    {'coteValue': 112, 'left': 205, 'bottom': 35},
    {'coteValue': 113, 'left': 205, 'bottom': 60},
    {'coteValue': 114, 'left': 205, 'bottom': 85},
    {'coteValue': 115, 'left': 205, 'bottom': 110},
    {'coteValue': 116, 'left': 205, 'bottom': 135},
    //End line A

    //Start line B
    //value for box 200 contain 211
    {'coteValue': 211, 'left': 8, 'bottom': 155},
    {'coteValue': 212, 'left': 33, 'bottom': 155},
    {'coteValue': 213, 'left': 58, 'bottom': 155},
    {'coteValue': 214, 'left': 83, 'bottom': 155},
    {'coteValue': 215, 'left': 108, 'bottom': 155},
    {'coteValue': 216, 'left': 133, 'bottom': 155},
    //value for box 200 contain 221
    {'coteValue': 221, 'left': 8, 'bottom': 183},
    {'coteValue': 222, 'left': 33, 'bottom': 183},
    {'coteValue': 223, 'left': 58, 'bottom': 183},
    {'coteValue': 224, 'left': 87, 'bottom': 183},
    {'coteValue': 225, 'left': 108, 'bottom': 183},
    {'coteValue': 226, 'left': 133, 'bottom': 183},
    //value for box 200 contain 231
    {'coteValue': 231, 'left': 8, 'bottom': 205},
    {'coteValue': 232, 'left': 33, 'bottom': 205},
    {'coteValue': 233, 'left': 58, 'bottom': 205},
    {'coteValue': 234, 'left': 87, 'bottom': 205},
    {'coteValue': 235, 'left': 108, 'bottom': 205},
    {'coteValue': 236, 'left': 133, 'bottom': 205},
    //End line B
    //Start line C
    //value for box 300 contain 332
    {'coteValue': 311, 'left': 155, 'bottom': 350},
    {'coteValue': 312, 'left': 155, 'bottom': 328},
    {'coteValue': 313, 'left': 155, 'bottom': 305},
    {'coteValue': 314, 'left': 155, 'bottom': 280},
    {'coteValue': 315, 'left': 155, 'bottom': 256},
    {'coteValue': 316, 'left': 155, 'bottom': 230},
    //value for box 300 contain 221
    {'coteValue': 321, 'left': 182, 'bottom': 350},
    {'coteValue': 322, 'left': 182, 'bottom': 328},
    {'coteValue': 323, 'left': 182, 'bottom': 305},
    {'coteValue': 324, 'left': 182, 'bottom': 280},
    {'coteValue': 325, 'left': 182, 'bottom': 256},
    {'coteValue': 326, 'left': 182, 'bottom': 230},
    //value for box 300 contain 231
    {'coteValue': 331, 'left': 205, 'bottom': 350},
    {'coteValue': 332, 'left': 205, 'bottom': 328},
    {'coteValue': 333, 'left': 205, 'bottom': 305},
    {'coteValue': 334, 'left': 205, 'bottom': 280},
    {'coteValue': 335, 'left': 205, 'bottom': 256},
    {'coteValue': 336, 'left': 205, 'bottom': 230},
    //End line C
    //Start line D
    //value for box 200 contain 431
    {'coteValue': 411, 'left': 355, 'bottom': 205},
    {'coteValue': 412, 'left': 330, 'bottom': 205},
    {'coteValue': 413, 'left': 305, 'bottom': 205},
    {'coteValue': 414, 'left': 280, 'bottom': 205},
    {'coteValue': 415, 'left': 255, 'bottom': 205},
    {'coteValue': 416, 'left': 232, 'bottom': 205},
    //value for box 200 contain 421
    {'coteValue': 421, 'left': 355, 'bottom': 183},
    {'coteValue': 422, 'left': 330, 'bottom': 183},
    {'coteValue': 423, 'left': 305, 'bottom': 183},
    {'coteValue': 424, 'left': 280, 'bottom': 183},
    {'coteValue': 425, 'left': 255, 'bottom': 183},
    {'coteValue': 426, 'left': 232, 'bottom': 183},
    //value for box 200 contain 211
    {'coteValue': 431, 'left': 355, 'bottom': 155},
    {'coteValue': 432, 'left': 330, 'bottom': 155},
    {'coteValue': 433, 'left': 305, 'bottom': 155},
    {'coteValue': 434, 'left': 280, 'bottom': 155},
    {'coteValue': 435, 'left': 255, 'bottom': 155},
    {'coteValue': 436, 'left': 232, 'bottom': 155},
    //End line D
  ];
}
