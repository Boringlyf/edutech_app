import 'package:app/models/user_model.dart';
import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PassengerModel {
  final UserModel user;
  final LatLng currLoc;
  final LatLng destination;
  int numberOfPeople;

  PassengerModel(
      {required this.user,
      required this.currLoc,
      required this.destination,
      this.numberOfPeople = 1});
}
