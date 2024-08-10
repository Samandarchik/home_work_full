import 'package:flutter/material.dart';
import 'package:home_work_full/1_course_app/constants_1.dart';
import 'package:home_work_full/2_covid_19/my_header.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyHeader(
            images: "assets/icons/coronadr.svg",
            textTop: "Get to know",
            textBottom: "About Covid-19.",
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text(
                  "Symptoms",
                  style: kTitleTextStyle,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
