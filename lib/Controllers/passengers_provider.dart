import 'package:app/models/passenger_model.dart';
import 'package:flutter/foundation.dart';

class PassengersProvider with ChangeNotifier {
  final List<PassengerModel> _Passengers = [
    PassengerModel(
      name: 'John Doe',
      image: 'assets/profile_pictures/profile_pic.png',
      rating: 4.5,
      location: 'IBA Main Campus, Karachi University,Uni Rd.',
      destination: 'Mazar-e-Quaid,Saddar,Karachi',
    ),
    PassengerModel(
      name: 'Abe Lincoln',
      image: 'assets/profile_pictures/profile_pic.png',
      rating: 3.5,
      location: 'IBA Boys Hostel,Karachi University,Uni Rd.',
      destination: 'IBA City Campus,Saddar',
    ),
  ];

  List<PassengerModel> get passengers {
    return [..._Passengers]; //returns a copy of the items in _users array
  }

  void addUser(PassengerModel value) {
    _Passengers.add(value);
    notifyListeners();
  }
}
