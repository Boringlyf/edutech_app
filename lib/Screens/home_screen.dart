import 'package:app/providers/users_provider.dart';
import 'package:app/widgets/drawer_content.dart';
import 'package:app/widgets/googlemapwidget.dart';
// import 'package:app/widgets/menu_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
      drawer: Drawer(child: DrawerContent()),
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
