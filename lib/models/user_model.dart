// model for all users basic information
import 'package:flutter/foundation.dart';

class UserModel {
  final String name;
  final String email;
  final String phone;
  final String cnic;


  UserModel(
      {required this.name,
      required this.cnic,
      required this.email,
      required this.phone});

}
