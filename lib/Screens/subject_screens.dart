import 'package:flutter/material.dart';

class SubjectScreens extends StatelessWidget {
  final Widget screen;
  const SubjectScreens({required this.screen, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Subjects Screen'),
      ),
      body: Center(
        child: Container(
          width: 350,
          height: double.infinity,
          // color: Colors.red,
          child: ListView.builder(
            itemCount: 20,
            itemBuilder: ((context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: GestureDetector(
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        title: Text('Subject'),
                      ),
                    ),
                    onTap: () {
                      //pass http request provider(controller) to get next set of options depending on next screen
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: ((context) => screen)),
                      );
                    },
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
