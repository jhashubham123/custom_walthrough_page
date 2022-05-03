import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

class WalkThroughController extends GetxController {
  var currentPage = 0;


  bool walkThroughScreen1 = true;
  bool walkThroughScreen2 = false;
  bool walkThroughScreen3 = false;

  void onNextClick() {
    if (walkThroughScreen1 == true) {
      walkThroughScreen1 = false;
      walkThroughScreen2 = true;
      walkThroughScreen3 = false;
    } else {
      walkThroughScreen3 = true;
      walkThroughScreen2 = false;
      walkThroughScreen1 = false;
    }
    currentPage == 0
        ? currentPage = 1
        : currentPage == 1
            ? currentPage = 2
            : currentPage = 2;
    update();
  }

  void onHorizontalSwipe(SwipeDirection direction) {
    if (direction == SwipeDirection.left) {
      if (walkThroughScreen1 == true) {
        walkThroughScreen1 = false;
        walkThroughScreen2 = true;
        walkThroughScreen3 = false;
      } else {
        walkThroughScreen3 = true;
        walkThroughScreen2 = false;
        walkThroughScreen1 = false;
      }
      currentPage == 0
          ? currentPage = 1
          : currentPage == 1
              ? currentPage = 2
              : currentPage = 2;
      print('Swiped left!');
    } else {
      if (walkThroughScreen3 == true) {
        walkThroughScreen3 = false;
        walkThroughScreen2 = true;
        walkThroughScreen1 = false;
      } else if (walkThroughScreen2 == true) {
        walkThroughScreen2 = false;
        walkThroughScreen1 = true;
        walkThroughScreen3 = false;
      } else {
        walkThroughScreen1 = true;
        walkThroughScreen2 = false;
        walkThroughScreen3 = false;
      }
      currentPage == 2
          ? currentPage = 1
          : currentPage == 1
              ? currentPage = 0
              : currentPage = 0;
      print('Swiped right!');
    }
    update();
  }
}
