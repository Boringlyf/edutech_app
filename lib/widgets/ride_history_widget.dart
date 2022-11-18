import 'package:app/widgets/ride_history_card.dart';
import 'package:app/widgets/total_badge.dart';
import 'package:flutter/material.dart';

import 'date_month.dart';

class RideHistoryWidget extends StatelessWidget {
  const RideHistoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              DateMonth(),
              DateMonth(),
              DateMonth(),
              DateMonth(),
            ],
          ),
        ),
        Row(
          children: const [
            TotalBadge(),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width -
              (MediaQuery.of(context).size.width * 0.95),
        ),
        new Expanded(
          child: new SingleChildScrollView(
            child: Column(
              children: <Widget>[
                RideHistoryCard(),
                RideHistoryCard(),
                RideHistoryCard(),
                RideHistoryCard(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
