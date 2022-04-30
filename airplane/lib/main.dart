import 'package:airplane/pages/get_started.dart';
import 'package:airplane/pages/splash.dart';
import 'package:airplane/theme.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        backgroundColor: navyColor,
        splashIconSize: 200,
        splashTransition: SplashTransition.slideTransition,
        pageTransitionType: PageTransitionType.fade,
        splash: const Splash(),
        nextScreen: const GetStarted(),
      ),
    );
  }
}
