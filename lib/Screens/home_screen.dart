import 'package:app/widgets/googlemapwidget.dart';
import 'package:app/widgets/menu_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        GoogleMapWidget(),
        MenuDrawer(),
      ]),
    );
  }
}
