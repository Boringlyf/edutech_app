// import 'package:app/models/passenger_model.dart';
import 'package:app/models/passenger_model.dart';
import 'package:flutter/material.dart';

class PassengerWidget extends StatefulWidget {
  final PassengerModel passenger;

  const PassengerWidget({required this.passenger, super.key});

  @override
  State<PassengerWidget> createState() => _PassengerWidgetState();
}

class _PassengerWidgetState extends State<PassengerWidget> {
  //bool _isFavorited = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Avatar(),
              Details(),
              Rating()
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Pointers(),
                // Location(),
                const Icon(Icons.location_searching,size: 16),
                Location(widget.passenger.location)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.location_on,size: 16),
                Location(widget.passenger.destination)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Seats(),
                // Price(),
                // RequestButton(),
                // Text("${widget.passenger.seats} Seats",
                //     style: const TextStyle(fontWeight: FontWeight.bold)),
                // Text("${widget.passenger.price}/seat",
                //   style: const TextStyle(fontWeight: FontWeight.bold),),
                ElevatedButton(
                  child: const Text("Add Passenger"),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget Avatar() {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: CircleAvatar(
        maxRadius: 25,
        backgroundImage: AssetImage(
          widget.passenger.image,
        ),
      ),
    );
  }

  Widget Details() {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Name(),
            // Text(widget.passenger.car),
            // Text(widget.passenger.car_color + " | " + widget.passenger.car_plate),
          ],
        ),
      ),
    );
  }

  Widget Name() {
    return Text(
      widget.passenger.name,
      style: const TextStyle(fontWeight: FontWeight.w700,fontSize:20 ),
    );
  }

  Widget Rating() {
    return Container(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            const Icon(
              Icons.star_rate_rounded,
              color: Colors.orangeAccent,
            ),
            Padding(
              padding: const EdgeInsets.only(top:2.0),
              child: Text(
                widget.passenger.rating.toString(),
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            )
          ],
        ));
  }

  Widget Location(String map) {
    return Container(
      padding: const EdgeInsets.all(6.0),
      child: Text(map),
    );
  }

// ···
}
