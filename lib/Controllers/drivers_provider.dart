//import 'package:app/models/user_model.dart';
import 'package:app/models/driver_model.dart';
import 'package:flutter/foundation.dart';



class DriversProvider with ChangeNotifier {


  final List<DriverModel> _drivers = [
    DriverModel(
        name: 'John Doe',
        image: 'assets/profile_pictures/profile_pic.png',
        car: 'Suzuki Cultus',
        car_color: 'White',
        car_plate: 'ZXC-421',
        rating: 4.5,
        seats: 3,
        location: 'IBA Main Campus, Karachi University,Uni Rd.',
        destination: 'Mazar-e-Quaid,Saddar,Karachi',
        price: 150),
    DriverModel(
        name: 'Abe Lincoln',
        image: 'assets/profile_pictures/profile_pic.png',
        car: 'Toyota Corolla',
        car_color: 'Grey',
        car_plate: 'ART-098',
        rating: 3.5,
        seats: 3,
        location: 'IBA Boys Hostel,Karachi University,Uni Rd.',
        destination: 'IBA City Campus,Saddar',
        price: 350),
  ];

  List<DriverModel> get drivers {
    return [..._drivers]; //returns a copy of the items in _users array
  }

  void addUser(DriverModel value) {
    _drivers.add(value);
    notifyListeners();
  }
}
