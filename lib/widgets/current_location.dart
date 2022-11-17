import 'package:flutter/material.dart';

class CurrentLocation extends StatelessWidget {
  const CurrentLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 300,
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'Current Location',
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        IconButton(
            color: Colors.red[400],
            onPressed: () {},
            icon: const Icon(
              Icons.location_searching_rounded,
              size: 25,
            ))
      ],
    );
  }
}
