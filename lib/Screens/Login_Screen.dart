import 'package:flutter/material.dart';
import 'package:my_trainer/Screens/welcomeScreen.dart';
import '../componets/RoundedButton.dart';
import 'package:my_trainer/constants/constants.dart';
import 'package:my_trainer/componets/Text_Field.dart';
import 'Register_Screen.dart';
import 'package:my_trainer/componets/Text_Password_Field.dart';

class LoginScreen extends StatelessWidget {
  static const String id = 'Login_Screen';

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
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
              RoundedTextField(icon: Icons.mail, name: 'Email'),
              RoundedTextPasswordField(
                icon: Icons.lock,
                name: 'Enter Your Password',
                icon2: Icon(Icons.visibility, color: kDarkOrange),
              ),
              RoundedButton(text: 'Login in'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Dont have an account?  ',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, RegisterScreen.id);
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kLightOrange,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
