import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Card(
          child: Container(
            width: 500,
            height: 500,
            color: Colors.teal,
          ),
        )
      ],
    ));
  }
}
