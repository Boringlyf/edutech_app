import 'package:edutech_app/models/dashboard_models.dart';
import 'package:flutter/foundation.dart';

class DashboardProviders with ChangeNotifier {
  // dashboard options displayed on student dashboard

  //dashboard options displayed on teacher dashboard
  List<DashboardModels> _teacherOptions = [];

  //dashboard options displayed on admin dashboard
  List<DashboardModels> _adminOptions = [];

  // //getter of student options
  // List<DashboardModels> get studentOptions {
  //   return [..._studentOptions];
  // }

  //getter of teacher options
  List<DashboardModels> get teacherOptions => [..._teacherOptions];

  //getter of admin options
  List<DashboardModels> get adminOptions => [..._adminOptions];
}
