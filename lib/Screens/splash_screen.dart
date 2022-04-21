import 'package:edutech_app/main.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart'
    as splashanim;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //function is run when the class first gets called
    super.initState();
    _navigatetologinpage();
  }

  _navigatetologinpage() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MyHomePage(
            title: "Login Screen",
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: Center(
        child: Container(
          child: Text(
            'Splash Screen',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
          ),
        ),
      ),
    );
  }
}
