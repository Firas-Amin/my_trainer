import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Screens/welcomeScreen.dart';
import 'package:my_trainer/Screens/Login_Screen.dart';
import 'Screens/Register_Screen.dart';

void main() => runApp(MyTrainer());

class MyTrainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegisterScreen.id: (context) => RegisterScreen(),
      },
    );
  }
}

// backgroundColor: Colors.white,
// appBar: AppBar(
// backgroundColor: Colors.white,
// title: Center(
// child: Image.asset(
// 'Images/logo2.png',
// scale: 60,
// ),
// ),
// ),
// body: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// children: <Widget>[
// Text(
// 'Test',
// style: TextStyle(
// fontSize: 100,
// ),
// )
// ],
// ),
