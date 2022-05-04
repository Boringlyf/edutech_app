import 'package:flutter/foundation.dart';

class SubjectsModel with ChangeNotifier {
  final String subjectId;
  final String subjectName;
  final String teacherName;
  final int? numberOfStudents;
  SubjectsModel(
      {required this.subjectId,
      required this.subjectName,
      required this.teacherName,
      this.numberOfStudents});
}
