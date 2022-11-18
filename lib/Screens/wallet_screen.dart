import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wallet'),
        backgroundColor: Colors.red[400],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    MediaQuery.of(context).size.width -
                        (MediaQuery.of(context).size.width * 0.5)),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width -
                    (MediaQuery.of(context).size.width * 0.5),
                height: MediaQuery.of(context).size.width -
                    (MediaQuery.of(context).size.width * 0.5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 253, 249, 249),
                    width: 4,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      MediaQuery.of(context).size.width -
                          (MediaQuery.of(context).size.width * 0.50),
                    ),
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  "15240",
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[400],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "You have in your wallet",
              style: TextStyle(
                color: Colors.red[400],
                fontSize: 26,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: const [
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text("M"),
                    ),
                    title: Text("Rider Name"),
                    subtitle: Text("Destination"),
                    trailing: Text("563 pkr"),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text("M"),
                    ),
                    title: Text("Rider Name"),
                    subtitle: Text("Destination"),
                    trailing: Text("563 pkr"),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text("M"),
                    ),
                    title: Text("Rider Name"),
                    subtitle: Text("Destination"),
                    trailing: Text("563 pkr"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
