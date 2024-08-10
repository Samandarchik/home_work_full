import 'package:flutter/material.dart';
import 'package:home_work_full/2_covid_19/color.dart';

class Counter extends StatelessWidget {
  final Color colorcounter;
  final String infectednumber;
  final String countername;
  const Counter({
    super.key,
    required this.colorcounter,
    required this.infectednumber,
    required this.countername,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(6),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: colorcounter.withOpacity(.26),
          ),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                border: Border.all(color: colorcounter, width: 2)),
          ),
        ),
        Text(
          infectednumber,
          style: TextStyle(fontSize: 40, color: colorcounter),
        ),
        Text(
          countername,
          style: kSubTextStyle,
        )
      ],
    );
  }
}
