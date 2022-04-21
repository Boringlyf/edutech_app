import 'package:edutech_app/widgets/custom_page_header.dart';
import 'package:flutter/material.dart';

class TeacherDashboard extends StatelessWidget {
  const TeacherDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomPageHeader(),
        ],
      ),
    );
  }
}
