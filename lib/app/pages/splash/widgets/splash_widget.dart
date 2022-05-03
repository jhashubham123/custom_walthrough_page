import 'package:airmymd/app/theme/app_sizebox.dart';
import 'package:flutter/material.dart';

import '../../../theme/padding.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset("assets/images/doctor.png"),
    );
  }
}
