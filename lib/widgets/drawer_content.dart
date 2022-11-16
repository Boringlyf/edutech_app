import 'package:flutter/material.dart';

import '../Screens/rides_history_screen.dart';
import '../Screens/wallet_screen.dart';

class DrawerContent extends StatelessWidget {
  const DrawerContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 180,
          color: Colors.red[400],
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(50)),
                  child: Icon(
                    Icons.person,
                    size: 80,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Saad Sheikh',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text('email@gmail.com'),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text('0324-3455532'),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => WalletScreen()));
          },
          child: ListTile(
            title: Text('Wallet'),
            leading: Icon(Icons.wallet),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => RidesScreen()));
          },
          child: ListTile(
            title: Text('Rides'),
            leading: Icon(Icons.directions_car),
          ),
        ),
      ],
    );
  }
}
