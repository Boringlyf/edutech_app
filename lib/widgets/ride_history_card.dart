import 'package:flutter/material.dart';

class RideHistoryCard extends StatelessWidget {
  const RideHistoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        MediaQuery.of(context).size.width -
            (MediaQuery.of(context).size.width * 0.98),
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height -
            (MediaQuery.of(context).size.height * 0.70),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(MediaQuery.of(context).size.width -
                  (MediaQuery.of(context).size.width * 0.98)),
            ),
            shape: BoxShape.rectangle,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(
                  5.0,
                  5.0,
                ),
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ), //BoxShadow
              BoxShadow(
                color: Colors.white,
                offset: Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ), //BoxShadow
            ],
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: CircleAvatar(
                      maxRadius: 25,
                      backgroundImage:
                          AssetImage('assets/profile_pictures/profile_pic.png'),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Driver Name",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                height: 24,
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Color(0xFFE7EA62),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        MediaQuery.of(context).size.width -
                                            (MediaQuery.of(context).size.width *
                                                0.99),
                                      ),
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Text(
                                      'Toyota Corolla',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              SizedBox(
                                height: 24,
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Color(0xFFE7EA62),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(
                                        MediaQuery.of(context).size.width -
                                            (MediaQuery.of(context).size.width *
                                                0.99),
                                      ),
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Text(
                                      'LHR 254',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 1,
                    child: Text(
                      '\$ 45',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'PICKUP',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/location.png',
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'IBA Boys Hostel',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width -
                    (MediaQuery.of(context).size.width * .20),
                child: const Divider(
                  color: Colors.grey,
                  thickness: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'DROP OFF',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/location_1.png',
                          height: 20,
                          width: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Nishat Colony somewhere in Karachi',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
