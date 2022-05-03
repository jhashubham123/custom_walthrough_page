import 'package:airmymd/app/navigators/app_routes.dart';
import 'package:get/get.dart';

abstract class NavigateTo {
  ///This function will navigate to walkThrough Screen.
  static void goToWalkThroughScreen() {
    Get.toNamed(Routes.walkthrough);
  }
}
