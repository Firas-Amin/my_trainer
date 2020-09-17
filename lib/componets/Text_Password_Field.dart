import 'package:flutter/material.dart';
import 'package:my_trainer/constants/constants.dart';

class TextPasswordFieldContainer extends StatelessWidget {
  final Widget child;

  TextPasswordFieldContainer({this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.centerLeft,
      child: child,
      width: size.width * 0.8,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 1),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}

class RoundedTextPasswordField extends StatelessWidget {
  final IconData icon;
  final String name;
  final Widget icon2;
  final ValueChanged<String> onChanged;
  const RoundedTextPasswordField(
      {this.icon, this.name, this.onChanged, this.icon2});

  @override
  Widget build(BuildContext context) {
    return TextPasswordFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: name,
          icon: Icon(
            icon,
            color: kDarkOrange,
          ),
          border: InputBorder.none,
          suffixIcon: icon2,
        ),
      ),
    );
  }
}
