import 'package:app/widgets/googlemapwidget.dart';
import 'package:app/widgets/menu_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
            ListTile(
              title: Text('Name'),
              leading: Icon(Icons.abc),
            )
          ],
        ),
      ),
      body: Stack(children: [
        GoogleMapWidget(),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.red[400]),
              child: IconButton(
                icon: Icon(
                  Icons.menu,
                  size: 30,
                ),
                onPressed: () {
                  _globalKey.currentState!.openDrawer();
                },
              ),
            ))
      ]),
    );
  }
}
