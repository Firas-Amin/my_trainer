import 'package:flutter/material.dart';
import 'package:my_trainer/Screens/Login_Screen.dart';
import '../componets/RoundedButton.dart';
import 'Login_Screen.dart';
import 'Register_Screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = ' Welcome_Screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[],
              ),
              RoundedButton(
                size: size,
                text: 'Sign in',
                press: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                },
              ),
              RoundedButton(
                size: size,
                text: 'Sign up',
                press: () {
                  Navigator.pushNamed(context, RegisterScreen.id);
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
