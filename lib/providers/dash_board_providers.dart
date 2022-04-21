import 'package:edutech_app/models/dashboard_models.dart';
import 'package:flutter/foundation.dart';

class DashboardProviders with ChangeNotifier {
  // dashboard options displayed on student dashboard
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
      name: 'Fees',
    )
  ];

  //dashboard options displayed on teacher dashboard
  List<DashboardModels> _teacherOptions = [];

  //dashboard options displayed on admin dashboard
  List<DashboardModels> _adminOptions = [];

  //getter of student options
  List<DashboardModels> get studentOptions {
    return [..._studentOptions];
  }

  //getter of teacher options
  List<DashboardModels> get teacherOptions => [..._teacherOptions];

  //getter of admin options
  List<DashboardModels> get adminOptions => [..._adminOptions];
}
