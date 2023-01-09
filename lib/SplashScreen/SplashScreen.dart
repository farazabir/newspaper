import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:newspaper/Screens/ContentScreen.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("NewsPaper BD",style: (TextStyle(fontSize: 40,fontWeight: FontWeight.bold)),),
          Lottie.asset('images/animation.json'),
          Text("Make Sure You have Internet Connection",
          style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.redAccent.shade200),
          )
        ],
      ),
      nextScreen: ContentScreen(),
      splashIconSize: 2000,
      duration: 1000,
      splashTransition: SplashTransition.slideTransition,
      
      animationDuration: const Duration(seconds: 1),
    );
  }
}