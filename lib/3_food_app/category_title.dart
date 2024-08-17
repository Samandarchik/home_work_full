import 'package:flutter/material.dart';
import 'package:home_work_full/3_food_app/color3.dart';

class CategoryTitle extends StatelessWidget {
  final String title;
  final bool active;
  const CategoryTitle({
    super.key,
    required this.active,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 30),
      child: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 19,
            color: active ? kPrimaryColor : kTextColor.withOpacity(.4)),
      ),
    );
  }
}
