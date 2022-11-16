import 'package:flutter/material.dart';

class MenuDrawer extends StatefulWidget {
  Function openMenu;

  MenuDrawer({Key? key, required this.openMenu}) : super(key: key);

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: Colors.red[400]),
          child: IconButton(
            icon: Icon(
              Icons.menu,
              size: 30,
            ),
            onPressed: widget.openMenu(),
          ),
        ));
  }
}


// Container(
        //   width: 50,
        //   height: 50,
        //   child: Drawer(
        //     backgroundColor: Colors.red[400],
        //   ),
        // )
