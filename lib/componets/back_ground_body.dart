import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            ],
          )
        ],
      ),
    );
  }
}
