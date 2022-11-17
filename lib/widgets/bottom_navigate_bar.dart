import 'package:flutter/material.dart';

class BottomNavigateBar extends StatelessWidget {
  const BottomNavigateBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: FractionalOffset.bottomCenter,
        child: Container(
          height: 60,
          color: Colors.red[400],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    size: 30,
                  )),
              SizedBox(width: 100),
              IconButton(onPressed: () {}, icon: Icon(Icons.home))
            ],
          ),
        ));
  }
}
