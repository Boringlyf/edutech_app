import 'package:flutter/material.dart';

class DateMonth extends StatelessWidget {
  const DateMonth({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.all(
          MediaQuery.of(context).size.width -
              (MediaQuery.of(context).size.width * 0.98),
        ),
        child: SizedBox(
          width: 60.0,
          height: 60.0,
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xFFD9D9D9),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
            ),
            alignment: Alignment.center,
            child: const Text(
              "DEC\n 25",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
