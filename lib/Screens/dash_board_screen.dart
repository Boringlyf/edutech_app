import 'package:edutech_app/Screens/result_screen.dart';
import 'package:edutech_app/Screens/schedule_screen.dart';
import 'package:edutech_app/Screens/student_assignmentscreen.dart';
import 'package:edutech_app/Screens/student_chat_screen.dart';
import 'package:edutech_app/Screens/student_quiz.dart';
import 'package:edutech_app/Screens/subject_screens.dart';
import 'package:edutech_app/Screens/view_announcementsscreen.dart';
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
                  //1
                  GestureDetector(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            width: 100,
                            height: 100,
                            child: Image.network(
                                'https://cdn-icons-png.flaticon.com/512/595/595990.png'),
                          ),
                          Text('Announcements')
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) => SubjectScreens(
                                screen: ViewAnnouncementsScreen(),
                              )),
                        ),
                      );
                    },
                  ),
                  //2
                  GestureDetector(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            width: 100,
                            height: 100,
                            child: Image.network(
                                'https://cdn-icons-png.flaticon.com/512/5678/5678058.png'),
                          ),
                          Text('Quiz')
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SubjectScreens(
                            screen: StudentQuizPage(),
                          ),
                        ),
                      );
                    },
                  ),
                  //3
                  GestureDetector(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            width: 100,
                            height: 100,
                            child: Image.network(
                                'https://cdn-icons-png.flaticon.com/512/4185/4185776.png'),
                          ),
                          Text('Assignments')
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: ((context) => SubjectScreens(
                                screen: StudentAssignmentScreen(),
                              )),
                        ),
                      );
                    },
                  ),
                  //4
                  GestureDetector(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            width: 100,
                            height: 100,
                            child: Image.network(
                                'https://cdn-icons-png.flaticon.com/512/1497/1497835.png'),
                          ),
                          Text('Schedule')
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SubjectScreens(
                            screen: ScheduleScreen(),
                          ),
                        ),
                      );
                    },
                  ),
                  //5
                  GestureDetector(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            width: 100,
                            height: 100,
                            child: Image.network(
                                'https://cdn-icons-png.flaticon.com/512/1041/1041916.png'),
                          ),
                          Text('Chat')
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SubjectScreens(
                            screen: StudentChatScreen(),
                          ),
                        ),
                      );
                    },
                  ),
                  //6
                  GestureDetector(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 20),
                            width: 100,
                            height: 100,
                            child: Image.network(
                                'https://cdn-icons-png.flaticon.com/512/2641/2641409.png'),
                          ),
                          Text('Results')
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SubjectScreens(
                            screen: ResultScreen(),
                          ),
                        ),
                      );
                    },
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
