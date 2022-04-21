import 'package:flutter/foundation.dart';

class DashboardModels with ChangeNotifier {
  final String name;
  final String imgPath;

  DashboardModels({required this.imgPath, required this.name});
}
