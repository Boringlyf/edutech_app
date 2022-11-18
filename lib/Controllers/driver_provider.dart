import 'package:app/models/driver_model.dart';
import 'package:flutter/foundation.dart';

class DriverProvider with ChangeNotifier {
  final List<DriverModel> _drivers = [];

  List<DriverModel> get drivers {
    return [..._drivers]; // a copy of _drivers is stored in drivers
  }
}
