import 'package:flutter/material.dart';

class BottomNavigateBar extends StatelessWidget {
  const BottomNavigateBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: FractionalOffset.bottomCenter,
        child: Container(
          height: 60,
          color: Colors.red[400],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  print('User chose to be a driver');
                },
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      'assets/passenger_icon.png',
                      width: 20,
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Text('Passenger'),
                    )
                  ],
                ),
              ),
              SizedBox(width: 100),
              GestureDetector(
                onTap: () {
                  print('User chose to be a driver');
                },
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Image.asset(
                      'assets/driver_icon.png',
                      width: 20,
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Text('Driver'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
