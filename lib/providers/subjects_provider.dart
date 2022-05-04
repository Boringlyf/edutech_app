import 'package:edutech_app/models/subjects_model.dart';
import 'package:flutter/foundation.dart';

class SubjectsProvider with ChangeNotifier {
  List<SubjectsModel> _subjects = [
    SubjectsModel(
        subjectId: '70654',
        subjectName: 'English',
        teacherName: 'Smith Robinson'),
    SubjectsModel(
        subjectId: '80462', subjectName: 'Algebra', teacherName: 'Jane Oscar'),
    SubjectsModel(
        subjectId: '80452', subjectName: 'Geometry', teacherName: 'Max Orwell'),
    SubjectsModel(
        subjectId: '40232',
        subjectName: 'Chemistry',
        teacherName: 'Benjamin Franklin'),
    SubjectsModel(
        subjectId: '50343',
        subjectName: 'Urdu',
        teacherName: 'Muhammad Ali Jinnah'),
    SubjectsModel(
        subjectId: '39999',
        subjectName: 'Physics',
        teacherName: 'Isaac Newton'),
    SubjectsModel(
        subjectId: '34958',
        subjectName: 'Economics',
        teacherName: 'Barry Biggins'),
  ];

  List<SubjectsModel> get subjects {
    return [..._subjects];
  }
}
