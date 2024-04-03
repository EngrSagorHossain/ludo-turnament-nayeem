import 'dart:async';

import 'package:just_audio/just_audio.dart';
import 'package:ludu_365/core/app_export.dart';
import 'package:ludu_365/presentation/computer_game_screen/models/computer_game_model.dart';

class ComputerGameController extends GetxController {
  Rx<ComputerGameModel> computerGameModelObj = ComputerGameModel().obs;

  var randomNumber = 2.obs; // Observable to store the random number
  late Timer _timer; // Timer to generate random numbers
  final currentPlayer = 'a'.obs;
  void startGeneratingRandomNumbers({required String player}) {
    playDice();
    updateActiveNumber(player: player);
    _timer = Timer.periodic(Duration(microseconds: 100), (timer) {
      // Generate random number between 1 to 6
      randomNumber.value = 1 + (DateTime.now().millisecondsSinceEpoch % 6);
    });
    Future.delayed(Duration(seconds: 2), () {
      _timer.cancel();
      if (randomNumber.value != 6) {
        print(aActiveNumber.value);
        if (player == 'b' && aActiveNumber.value == 0) {
          updateDice(player: player);
          print('called');
        }
        if (player == 'c' && bActiveNumber.value == 0) {
          updateDice(player: player);
          print('called');
        }
        if (player == 'd' && cActiveNumber.value == 0) {
          updateDice(player: player);
          print('called');
        }
        if (player == 'a' && dActiveNumber.value == 0) {
          updateDice(player: player);
          print('called');
        }
      }
    });
    currentPlayer.value = player;
  }

  void makePointerActive({required String pointer}) async {
    //initial value set done
    listPointer4Player.forEach((element) {
      if (element['pointer'] == pointer) {
        //initial value set done
        element['status'] = 'active';
      }
    });
    listPointer4Player.refresh();
  }

  //logic started
  void setPositionValueAndPointer({required String pointer}) {
    if (randomNumber.value != 6) {
      print('called');
      updateDice(player: currentPlayer.value);
    }
    print(pointer);
    int firstDigit = 0;
    int lastTwoDigits = 0;
    int extraValue = 0;
    listPointer4Player.forEach((pointerStatus) {
      if (pointerStatus['pointer'] == pointer &&
          pointerStatus['status'] == 'active') {
        //apply active logic
        if (pointerStatus['move'] == 'plus') {
          positionListOfPointer.forEach((pointerPosition) {
            //for plus
            if (pointerPosition['pointer'] == pointer) {
              print('from active and plus');
              print(pointerPosition);
              pointerPosition['coteValue'] =
                  (pointerPosition['coteValue'] as int) + randomNumber.value;
              //set 1st value
              firstDigit = int.parse(
                  pointerPosition['coteValue'].toString().substring(0, 1));
              lastTwoDigits = int.parse(pointerPosition['coteValue']
                  .toString()
                  .substring(
                      pointerPosition['coteValue'].toString().length - 2));
              //add greater than 36
              if (pointerPosition['pointer'] == pointer && lastTwoDigits > 36) {
                pointerStatus['move'] = 'minus';
                print('first digits and last two');
                print(firstDigit);
                print(lastTwoDigits);
                switch (firstDigit) {
                  case 1:
                    extraValue =
                        int.parse(pointerPosition['coteValue'].toString()) -
                            136;
                    pointerPosition['coteValue'] = 216 - extraValue + 1;
                    break;
                  case 2:
                    extraValue =
                        int.parse(pointerPosition['coteValue'].toString()) -
                            236;
                    pointerPosition['coteValue'] = 316 - extraValue + 1;
                    break;
                  case 3:
                    extraValue =
                        int.parse(pointerPosition['coteValue'].toString()) -
                            336;
                    pointerPosition['coteValue'] = 416 - extraValue + 1;
                    break;
                  case 4:
                    extraValue =
                        int.parse(pointerPosition['coteValue'].toString()) -
                            436;
                    pointerPosition['coteValue'] = 116 - extraValue + 1;
                    break;
                  default:
                    break;
                }
                print('after >36');
                print(pointerPosition['coteValue']);
              }
            }
          });

          positionListOfPointer.refresh();
        } else {
          //for minus
          positionListOfPointer.forEach((pointerPosition) {
            if (pointerPosition['pointer'] == pointer) {
              print('from active and minus');
              print(pointerPosition);
              if (int.parse(pointerPosition['coteValue'].toString().substring(
                      pointerPosition['coteValue'].toString().length - 2)) ==
                  21) {
                pointerPosition['coteValue'] =
                    (pointerPosition['coteValue'] as int) +
                        10 +
                        randomNumber.value -
                        1;

                pointerStatus['move'] = 'plus';
                listPointer4Player.refresh();
              } else {
                //for minus
                pointerPosition['coteValue'] =
                    (pointerPosition['coteValue'] as int) - randomNumber.value;
                print('minus value');
                print(pointerPosition['coteValue']);
                //set the 1st value
                firstDigit = int.parse(
                    pointerPosition['coteValue'].toString().substring(0, 1));
                lastTwoDigits = int.parse(pointerPosition['coteValue']
                    .toString()
                    .substring(
                        pointerPosition['coteValue'].toString().length - 2));
                if (lastTwoDigits <= 11 && lastTwoDigits > 4) {
                  switch (11 - lastTwoDigits) {
                    case 1:
                      pointerPosition['coteValue'] = 21 + (firstDigit * 100);
                      pointerStatus['move'] = 'minus';
                      break;
                    case 0:
                      pointerPosition['coteValue'] =
                          pointerPosition['coteValue'] as int;
                      -randomNumber.value;
                      pointerStatus['move'] = 'minus';

                      break;
                    default:
                      print('called');
                      pointerPosition['coteValue'] =
                          31 + (firstDigit * 100) + (11 - lastTwoDigits) - 2;
                      pointerStatus['move'] = 'plus';
                      break;
                  }
                  listPointer4Player.refresh();
                }
              }
            }
          });
        }
      } else if (pointerStatus['pointer'] == pointer &&
          pointerStatus['status'] == 'inactive') {
        positionListOfPointer.forEach((player) {
          if (player['pointer'] == pointer) {
            int coteValue = player['coteValue'] as int;
            //set initial value
            if (coteValue > 100 && coteValue < 105) {
              makePointerActive(pointer: pointer);
              player['coteValue'] = 132;
            }
            if (coteValue > 200 && coteValue < 205) {
              makePointerActive(pointer: pointer);
              player['coteValue'] = 232;
            }
            if (coteValue > 300 && coteValue < 305) {
              makePointerActive(pointer: pointer);
              player['coteValue'] = 332;
            }
            if (coteValue > 400 && coteValue < 405) {
              player['coteValue'] = 432;
              makePointerActive(pointer: pointer);
            }
          }
        });
      }
    });
    updateThePositionOfPointer(pointerName: pointer);
  }

  void updateThePositionOfPointer({required String pointerName}) {
    positionListOfPointer.forEach((pointerPosition) {
      if (pointerPosition['pointer'] == pointerName) {
        //update the pointer position
        boxPointerList.where((boxPointer) {
          if (pointerPosition['coteValue'] == boxPointer['coteValue']) {
            pointerPosition['left'] = boxPointer['left']!;
            pointerPosition['bottom'] = boxPointer['bottom']!;
            positionListOfPointer.refresh();
            return true;
          } else {
            return false;
          }
        }).toList();
        print('updated Value');
        print(pointerPosition);
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

  final positionListOfPointer = [
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

  //dice rolling list

  final listOfDiceRolling = [
    {'player': 'a', 'dice': 'active'},
    {'player': 'b', 'dice': 'inactive'},
    {'player': 'c', 'dice': 'inactive'},
    {'player': 'd', 'dice': 'inactive'}
  ].obs;

  final activeDicePlayer = 'a'.obs;

  void updateDice({required String player}) {
    listOfDiceRolling.forEach((dice) {
      if (dice['player'] == player) {
        dice['dice'] = 'active';
        activeDicePlayer.value = player;
      } else {
        dice['dice'] = 'inactive';
      }
    });
    print(listOfDiceRolling);
  }

// Define observables for each variable
  final aActiveNumber = 0.obs;
  final bActiveNumber = 0.obs;
  final cActiveNumber = 0.obs;
  final dActiveNumber = 0.obs;

  void updateActiveNumber({required String player}) {
    listPointer4Player.forEach((element) {
      String pointer = element['pointer']!.toString();
      if (pointer.startsWith('a') && element['status'] == 'active') {
        // Increment the value of aActiveNumber
        aActiveNumber.value++;
      } else if (pointer.startsWith('b') && element['status'] == 'active') {
        // Increment the value of bActiveNumber
        bActiveNumber.value++;
      } else if (pointer.startsWith('c') && element['status'] == 'active') {
        // Increment the value of cActiveNumber
        cActiveNumber.value++;
      } else if (pointer.startsWith('d') && element['status'] == 'active') {
        // Increment the value of dActiveNumber
        dActiveNumber.value++;
      }
    });
  }
}
