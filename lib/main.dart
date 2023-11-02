import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:app/User%20Interface/mainpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "E-Commerce Web",
      debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
            splash: "assets/style.png",
            duration: 3000,
            splashTransition: SplashTransition.slideTransition,
            splashIconSize: 500,
            nextScreen: const MainPage()));
  }
}
