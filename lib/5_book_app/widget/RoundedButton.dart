import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  String text1;
  VoidCallback press;
  double? verticalPadding = 16;
  double? fontSize = 16.0;
  RoundedButton(
      {super.key,
      required this.text1,
      required this.press,
      this.verticalPadding,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 13),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              offset: Offset(0, 3),
              blurRadius: 20,
              color: Color(0xFF666666).withOpacity(.3))
        ], color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: Text(
          text1,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
