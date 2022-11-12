import 'package:app/Screens/home_screen.dart';
import 'package:app/widgets/stringinputfield.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUpBlock extends StatelessWidget {
  SignUpBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 25),
            child: Text(
              'SIGN UP:',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          StringInputField(label: 'Name'),
          SizedBox(
            height: 20,
          ),
          StringInputField(label: 'Email'),
          SizedBox(
            height: 20,
          ),
          IntlPhoneField(
            decoration: InputDecoration(
              labelText: 'Phone Number',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            initialCountryCode: 'PK',
            onChanged: (phone) {
              print(phone.completeNumber);
            },
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 250,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: Text('Go')),
            ],
          )
        ]),
      ),
    );
  }
}
