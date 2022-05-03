import 'package:airmymd/app/navigators/navigators.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  void navigateToLogin() {
    Future.delayed(
        const Duration(seconds: 5), NavigateTo.goToWalkThroughScreen);
  }

  @override
  onInit() async {
    navigateToLogin();
    super.onInit();
  }
}
