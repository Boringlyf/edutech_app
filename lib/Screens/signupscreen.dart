import 'package:app/widgets/logo.dart';
import 'package:app/widgets/signup_block.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [const Logo(), SignUpBlock()],
      ),
    );
  }
}
