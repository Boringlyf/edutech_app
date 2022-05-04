import 'package:edutech_app/widgets/custom_page_header.dart';
import 'package:edutech_app/widgets/student_options_widgets.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import '../models/dashboard_models.dart';
import 'login_screen.dart';

class DashBoardScreen extends StatefulWidget {
  String Erp;
  DashBoardScreen({required this.Erp, Key? key}) : super(key: key);

  @override
  _DashBoardScreenState createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            CustomPageHeader(),
            StudentOptionsWidget(),
          ],
        ),
      ),
    );
  }
}
