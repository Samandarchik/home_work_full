import 'package:flutter/material.dart';
import 'package:home_work_full/5_book_app/color.dart';

class TwoSideRoundedButton extends StatelessWidget {
  final String text;
  final double radious;
  final VoidCallback press;
  const TwoSideRoundedButton(
      {super.key,
      required this.text,
      required this.radious,
      required this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: kBlackColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(radious),
                bottomRight: Radius.circular(radious))),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
