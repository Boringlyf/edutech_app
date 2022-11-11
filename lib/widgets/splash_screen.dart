import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:app/Screens/signup_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset(
        'assets/carpool.png',
        height: 250,
        width: 250,
      ),
      // Column(
      //   children: [
      //     Image.asset(
      //       'assets/carpool.png',
      //       height: 200,
      //       width: 200,
      //     ),
      //     Text('Splash Screen')
      //   ],
      // ),
      nextScreen: SignUpScreen(),
      splashIconSize: 250,
    );
  }
}