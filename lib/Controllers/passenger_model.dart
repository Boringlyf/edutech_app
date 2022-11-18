import 'package:app/models/passenger_model.dart';
import 'package:flutter/foundation.dart';

class PassengerProvider with ChangeNotifier {
  final List<PassengerModel> _passengers = [];

  List<PassengerModel> get passengers {
    return [..._passengers];
  }
}
