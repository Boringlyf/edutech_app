import 'package:app/Screens/drivers.dart';
import 'package:app/Screens/passengers_screen.dart';
import 'package:app/widgets/current_location.dart';
import 'package:app/widgets/number_selector.dart';
import 'package:flutter/material.dart';

class PassengerBottomSheet extends StatelessWidget {
  const PassengerBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              //the rounded corner is created here
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            ),
            context: context,
            builder: (context) {
              return Padding(
                padding: MediaQuery.of(context).viewInsets,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      CurrentLocation(),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Destination',
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          const Text('Number of people : '),
                          const SizedBox(
                            width: 20,
                          ),
                          NumberSelector()
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => DriversScreen()),
                          );
                        },
                        child: Text('Find Driver'),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.red[400])),
                      )
                    ],
                  ),
                ),
              );
            });
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
    );
  }
}
