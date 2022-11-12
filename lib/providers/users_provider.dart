import 'package:app/models/user_model.dart';
import 'package:flutter/foundation.dart';

class UsersProvider with ChangeNotifier {
  List<UserModel> _users = [];

  List<UserModel> get users {
    return [..._users]; //returns a copy of the items in _users array
  }

  void addUser(UserModel value) {
    _users.add(value);
    notifyListeners();
  }
}
