import 'package:flutter/material.dart';

class MenuDrawer extends StatefulWidget {
  MenuDrawer({Key? key}) : super(key: key);

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: InkWell(
        onTap: () {
          print('menu open');
        },
        child: Container(
          width: 50,
          height: 50,
          decoration: new BoxDecoration(
              color: Colors.red[400],
              borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(40.0),
                  topRight: const Radius.circular(40.0),
                  bottomLeft: const Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0))),
          child: Center(
            child: Icon(Icons.menu),
          ),
        ),
      ),
    );
  }
}
