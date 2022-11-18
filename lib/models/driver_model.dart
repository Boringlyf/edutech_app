import 'package:app/models/user_model.dart';
import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DriverModel {
  final UserModel user;
  final String plateNumber;
  final LatLng currentLoc;
  final LatLng destination;
  int numberOfPassengers;
  final int range;

  DriverModel(
      {required this.user,
      required this.currentLoc,
      required this.destination,
      this.numberOfPassengers = 1,
      required this.plateNumber,
      required this.range});
}
