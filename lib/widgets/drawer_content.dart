import 'package:app/Controllers/users_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
                    Icons.person_outline,
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
                        context.watch<UsersProvider>().users[0].name,
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(context.watch<UsersProvider>().users[0].email),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child:
                            Text(context.watch<UsersProvider>().users[0].phone),
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
        InkWell(
          onTap: () {
            // Navigator.of(context)
            //     .push(MaterialPageRoute(builder: (context) => WalletScreen()));
          },
          child: ListTile(
            title: Text('Settings'),
            leading: Icon(Icons.settings),
          ),
        ),
      ],
    );
  }
}
