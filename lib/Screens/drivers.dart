// import 'package:app/models/driver_model.dart';
// import 'package:app/models/user_model.dart';
// import 'package:app/widgets/driver_widget.dart';
import 'package:app/Controllers/drivers_provider.dart';
import 'package:app/widgets/driver_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DriversScreen extends StatefulWidget {
  const DriversScreen({super.key});



  @override
  State<DriversScreen> createState() => _DriversScreenState();
}

class _DriversScreenState extends State<DriversScreen> {
  @override
  Widget build(BuildContext context) {
    var drivers = context.watch<DriversProvider>().drivers;


    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: ListView(
            children: drivers
                .map((driver) => DriverWidget(
                      driver: driver,
                    ))
                .toList(),
          ),
        )

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
