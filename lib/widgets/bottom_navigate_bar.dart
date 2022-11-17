import 'package:app/widgets/driver_bottom_sheet.dart';
import 'package:app/widgets/passenger_bottom_sheet.dart';
import 'package:app/widgets/stringinputfield.dart';
import 'package:flutter/material.dart';

class BottomNavigateBar extends StatelessWidget {
  const BottomNavigateBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: FractionalOffset.bottomCenter,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
              color: Colors.red[400],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PassengerBottomSheet(),
              SizedBox(width: 100),
              DriverBottomSheet()
            ],
          ),
        ));
  }
}
