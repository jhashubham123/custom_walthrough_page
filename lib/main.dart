import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/navigators/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  ThemeData myTheme() {
    return ThemeData.light();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: myTheme(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      getPages: AppPages.pages,
      initialRoute: AppPages.initial,
    );
  }
}
