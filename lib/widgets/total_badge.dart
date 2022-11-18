import 'package:flutter/material.dart';

class TotalBadge extends StatelessWidget {
  const TotalBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.width -
              (MediaQuery.of(context).size.width * 0.985),
          bottom: MediaQuery.of(context).size.width -
              (MediaQuery.of(context).size.width * 0.985),
          right: MediaQuery.of(context).size.width -
              (MediaQuery.of(context).size.width * 0.975),
          left: MediaQuery.of(context).size.width -
              (MediaQuery.of(context).size.width * 0.975)),
      child: Row(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width -
                (MediaQuery.of(context).size.width * .55),
            height: MediaQuery.of(context).size.height -
                (MediaQuery.of(context).size.height * 0.925),
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFB89BB3),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                    ),
                    child: Image.asset(
                      'assets/car.png',
                      height: 36,
                      width: 36,
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Total Rides",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.red[400],
                          ),
                        ),
                        Text(
                          "16",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.red[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width -
                (MediaQuery.of(context).size.width * .95),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width -
                (MediaQuery.of(context).size.width * .55),
            height: MediaQuery.of(context).size.height -
                (MediaQuery.of(context).size.height * 0.925),
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFF04438),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Image.asset(
                      'assets/dollar-symbol.png',
                      height: 36,
                      width: 36,
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Total Spent",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF181515),
                          ),
                        ),
                        Text(
                          "\$70",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF181515),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
