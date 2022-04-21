import 'package:edutech_app/Screens/student_quiz.dart';
import 'package:edutech_app/providers/dash_board_providers.dart';
import 'package:edutech_app/widgets/custom_page_header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../main.dart';
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
    final studentDashoptions = Provider.of<DashboardProviders>(context);
    final studentOptions = studentDashoptions.studentOptions;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            CustomPageHeader(),
          ],
        ),
      ),
    );
  }
}
