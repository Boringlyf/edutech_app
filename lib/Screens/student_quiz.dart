import 'package:flutter/material.dart';

class StudentQuizPage extends StatelessWidget {
  const StudentQuizPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Information'),
      ),
      body: Column(
        children: [
          Card(
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
                child: Text('Question')),
          ),
          Card(
            child: Text("Answers"),
          )
        ],
      ),
    );
  }
}
