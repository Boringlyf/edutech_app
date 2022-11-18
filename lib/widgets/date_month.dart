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
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(
                Radius.circular(8.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(
                    2.5,
                    2.5,
                  ),
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                ), //BoxShadow
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ),
              ],
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
