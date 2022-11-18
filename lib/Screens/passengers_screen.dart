// import 'package:app/models/driver_model.dart';
// import 'package:app/models/user_model.dart';
// import 'package:app/widgets/driver_widget.dart';
import 'package:app/Controllers/passengers_provider.dart';
import 'package:app/widgets/passenger_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PassengersScreen extends StatefulWidget {
  const PassengersScreen({super.key});



  @override
  State<PassengersScreen> createState() => _PassengersState();
}

class _PassengersState extends State<PassengersScreen> {
  @override
  Widget build(BuildContext context) {
    var passenger = context.watch<PassengersProvider>().passengers;


    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: ListView(
            children:  passenger
                .map((p) => PassengerWidget(
              passenger: p,
            ))
                .toList(),
          ),
        )

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
