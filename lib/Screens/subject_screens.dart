import 'package:flutter/material.dart';

class SubjectScreens extends StatelessWidget {
  final Widget screen;
  const SubjectScreens({required this.screen, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subjects Screen'),
      ),
      body: ListView.builder(
        itemBuilder: ((context, index) => Card()),
      ),
    );
  }
}
