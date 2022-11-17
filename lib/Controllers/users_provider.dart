import 'package:app/models/user_model.dart';
import 'package:flutter/foundation.dart';

class UsersProvider with ChangeNotifier {
  final List<UserModel> _users = [
    UserModel(
        name: 'Saad Sheikh', email: 'email@gmail.com', phone: '0324-3455032')
  ];

  List<UserModel> get users {
    return [..._users]; //returns a copy of the items in _users array
  }

  void addUser(UserModel value) {
    _users.add(value);
    notifyListeners();
  }
}
