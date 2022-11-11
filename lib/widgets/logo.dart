import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 150,
        ),
        Image.asset(
          'assets/carpool.png',
          height: 100,
          width: 100,
        ),
      ],
    );
  }
}
