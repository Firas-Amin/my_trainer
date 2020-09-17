import 'package:flutter/material.dart';
import 'package:my_trainer/componets/Text_Field.dart';
import 'package:my_trainer/componets/RoundedButton.dart';
import 'package:my_trainer/componets/Text_Password_Field.dart';

import '../constants/constants.dart';

class RegisterScreen extends StatelessWidget {
  static const String id = 'Register_Screen';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('Images/backgroundscreen.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.all(40),
                child: Text(
                  'My Trainer',
                  style: TextStyle(
                    fontFamily: 'Bristone',
                    fontSize: 27.0,
                    color: const Color(0xffffffff),
                    letterSpacing: 2.7724639892578127,
                    height: 1.2000000550369243,
                  ),
                ),
              ),
              RoundedTextField(
                icon: Icons.mail,
                name: 'Email',
              ),
              RoundedTextPasswordField(
                icon: Icons.lock,
                name: 'Enter Your Password',
                icon2: Icon(Icons.visibility, color: kDarkOrange),
              ),
              RoundedButton(
                text: 'Sign UP',
                press: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
