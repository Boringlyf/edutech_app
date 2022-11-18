import 'package:app/widgets/date_month.dart';
import 'package:app/widgets/ride_history_card.dart';
import 'package:app/widgets/ride_history_widget.dart';
import 'package:app/widgets/total_badge.dart';
import 'package:flutter/material.dart';

class RidesScreen extends StatelessWidget {
  const RidesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Rides Screen'),
        backgroundColor: Colors.red[400],
      ),
      body: const RideHistoryWidget(),
    );
  }
}
