// ignore_for_file: depend_on_referenced_packages, unused_local_variable, unnecessary_null_comparison, prefer_const_constructors

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_benerin_app/components/Welcome/wellcome_components.dart';

class SplashComponents extends StatelessWidget {
  const SplashComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: "lib/assets/Logo/Logo.png",
      splashIconSize: MediaQuery.of(context).size.width,
      nextScreen: WelcomePage(),
      backgroundColor: Color.fromRGBO(240, 90, 66, 1),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
