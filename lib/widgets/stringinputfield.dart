import 'package:flutter/material.dart';

class StringInputField extends StatefulWidget {
  final String label;
  StringInputField({Key? key, required this.label}) : super(key: key);
  @override
  State<StringInputField> createState() => _StringInputFieldState();
}

class _StringInputFieldState extends State<StringInputField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          labelText: widget.label,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          )),
    );
  }
}
