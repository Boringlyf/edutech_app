import 'package:flutter/material.dart';

class NumberSelector extends StatefulWidget {
  NumberSelector({Key? key}) : super(key: key);

  @override
  State<NumberSelector> createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          (counter > 1)
              ? IconButton(
                  onPressed: () {
                    //put this in provider of driver
                    --counter;
                    setState(() {});
                  },
                  icon: const Icon(Icons.remove))
              : const IconButton(onPressed: null, icon: Icon(Icons.remove)),
          const SizedBox(
            width: 5,
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.red[400],
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  '${counter}',
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              )),
          const SizedBox(
            width: 5,
          ),
          (counter < 4)
              ? IconButton(
                  onPressed: () {
                    // put this in provider
                    counter++;
                    setState(() {});
                  },
                  icon: const Icon(Icons.add))
              : const IconButton(onPressed: null, icon: Icon(Icons.add))
        ],
      ),
    );
  }
}
