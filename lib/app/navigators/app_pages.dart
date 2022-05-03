import 'package:airmymd/app/navigators/app_routes.dart';
import 'package:airmymd/app/pages/splash/splash_binding.dart';
import 'package:airmymd/app/pages/splash/splash_view.dart';
import 'package:airmymd/app/pages/walkthrough/walkthrough_binding.dart';
import 'package:airmymd/app/pages/walkthrough/walkthrough_view.dart';
import 'package:get/get.dart';

class AppPages {
  static var transitionDuration = const Duration(milliseconds: 350);

  static const initial = Routes.splash;

  static final pages = [
    GetPage<SplashScreen>(
        name: Routes.splash,
        page: SplashScreen.new,
        transition: Transition.noTransition,
        binding: SplashBinding(),
        transitionDuration: transitionDuration),
    GetPage<WalkThroughScreen>(
        name: Routes.walkthrough,
        page: WalkThroughScreen.new,
        transition: Transition.noTransition,
        binding: WalkThroughBinding(),
        transitionDuration: transitionDuration),
  ];
}
