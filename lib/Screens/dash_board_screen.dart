import 'package:edutech_app/Screens/student_quiz.dart';
import 'package:edutech_app/providers/dash_board_providers.dart';
import 'package:edutech_app/widgets/custom_page_header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
  List<DashboardModels> _studentOptions = [
    DashboardModels(
      imgPath: 'https://cdn-icons-png.flaticon.com/512/595/595990.png',
      name: 'Announcements',
    ),
    DashboardModels(
      imgPath: 'https://cdn-icons-png.flaticon.com/512/5678/5678058.png',
      name: "Quiz",
    ),
    DashboardModels(
      imgPath: 'https://cdn-icons-png.flaticon.com/512/4185/4185776.png',
      name: 'Assignments',
    ),
    DashboardModels(
      imgPath: 'https://cdn-icons-png.flaticon.com/512/1497/1497835.png',
      name: 'Schedule',
    ),
    DashboardModels(
      imgPath: 'https://cdn-icons-png.flaticon.com/512/1041/1041916.png',
      name: 'Chat',
    ),
    DashboardModels(
      imgPath: 'https://cdn-icons-png.flaticon.com/512/2641/2641409.png',
      name: 'Results',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            CustomPageHeader(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              height: 460,
              width: double.infinity,
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 2.6 / 2,
                shrinkWrap: true,
                crossAxisSpacing: 10,
                mainAxisSpacing: 15,
                padding: const EdgeInsets.all(10.0),
                children: [
                  GestureDetector(
                    child: Card(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 20),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



// GridView.builder(
//                   padding: const EdgeInsets.all(10.0),
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     childAspectRatio: 2.6 / 2,
//                     crossAxisSpacing: 10,
//                     mainAxisSpacing: 15,
//                   ),
//                   itemCount: _studentOptions.length,
//                   itemBuilder: (context, index) {
//                     return GestureDetector(
//                       child: Card(
//                         child: Column(children: [
//                           Container(
//                             padding: EdgeInsets.symmetric(vertical: 20),
//                             width: 100,
//                             height: 100,
//                             child:
//                                 Image.network(_studentOptions[index].imgPath),
//                           ),
//                           Text(_studentOptions[index].name),
//                         ]),
//                       ),
//                       onTap: () {},
//                     );
//                   })