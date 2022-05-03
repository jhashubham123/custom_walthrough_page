import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/asset_constants.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/app_sizebox.dart';
import '../walkthrough_controller.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';


class TestWidget extends StatelessWidget {
  TestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WalkThroughController>(builder: (_controller) {
      return SimpleGestureDetector(
        onHorizontalSwipe: _controller.onHorizontalSwipe,
        child: Container(
          alignment: Alignment.bottomCenter,
          child: Column(
            children: [
              Expanded(
                  flex: 3,
                  child: Stack(
                    children: [
                      AnimatedSwitcher(
                        duration: const Duration(seconds: 1),
                        transitionBuilder:
                            (Widget child, Animation<double> animation) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                        child: Visibility(
                          key: ValueKey(walkThrough1()),
                          visible: _controller.walkThroughScreen1,
                          child: walkThrough1(),
                        ),
                      ),
                      AnimatedSwitcher(
                          duration: const Duration(seconds: 1),
                          transitionBuilder:
                              (Widget child, Animation<double> animation) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                          child: Visibility(
                              key: ValueKey(walkThrough2()),
                              visible: _controller.walkThroughScreen2,
                              child: walkThrough2())),
                      AnimatedSwitcher(
                          duration: const Duration(seconds: 1),
                          transitionBuilder:
                              (Widget child, Animation<double> animation) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                          child: Visibility(
                              key: ValueKey(walkThrough3()),
                              visible: _controller.walkThroughScreen3,
                              child: walkThrough3()))
                    ],
                  )),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      const Spacer(),
                      GestureDetector(
                        onTap: _controller.onNextClick,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 25, vertical: 9),
                          decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Text('Next'),
                        ),
                      ),
                      const Spacer(),
                      const Text('Skip'),
                      const Spacer(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}

Widget buildDot({required int index}) {
  return GetBuilder<WalkThroughController>(builder: (_controller) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 1000),
      curve: Curves.bounceIn,
      child: Icon(
        _controller.currentPage==index?Icons.remove:
        Icons.circle,
        color: _controller.currentPage == index
            ? AppColors.primaryColor
            : AppColors.inActiveColor,
        size: _controller.currentPage == index ? 15 : 10,
      ),
    );
  });
}

Widget walkThrough1() {
  return Container(
    alignment: Alignment.center,
    child: Column(
      children: [
        Spacer(),
        Image.asset(AppImages.walkthrough1),
        Spacer(),
        Text('detaillll111'),
        AppSizeBox.height_2,
        Text('titttt;;;111'),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(3, (index) => buildDot(index: index)),
        ),
      ],
    ),
  );
}

Widget walkThrough2() {
  return Container(
    alignment: Alignment.center,
    child: Column(
      children: [
        Spacer(),
        Image.asset(AppImages.walkthrough1),
        Spacer(),
        Text('walk2'),
        AppSizeBox.height_2,
        Text('walk2'),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(3, (index) => buildDot(index: index)),
        ),
      ],
    ),
  );
}

Widget walkThrough3() {
  return Container(
    alignment: Alignment.center,
    child: Column(
      children: [
        Spacer(),
        Image.asset(AppImages.walkthrough1),
        Spacer(),
        Text('doc3'),
        AppSizeBox.height_2,
        Text('doc3'),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(3, (index) => buildDot(index: index)),
        ),
      ],
    ),
  );
}
