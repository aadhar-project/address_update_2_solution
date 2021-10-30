import "package:animated_splash_screen/animated_splash_screen.dart";
import 'package:flutter/material.dart';

import 'package:adhaarhackathon/main.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image(
        image: const AssetImage("images/logo.jpg"),
        width: 550,
        height: 200,
      ),
      nextScreen: const myapp(),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Colors.white,
      duration: 1500,
    );
  }
}
