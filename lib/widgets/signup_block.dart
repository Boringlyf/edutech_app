import 'package:flutter/material.dart';

class SignUpBlock extends StatelessWidget {
  const SignUpBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 25),
            child: Text(
              'SIGN UP:',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          TextFormField()
        ]),
      ),
    );
  }
}
