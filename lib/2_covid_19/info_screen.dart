import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home_work_full/1_course_app/constants_1.dart';
import 'package:home_work_full/2_covid_19/color.dart';
import 'package:home_work_full/2_covid_19/my_header.dart';
import 'package:home_work_full/3_food_app/home_screen_3_app.dart';
import 'package:home_work_full/floating_action_button.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Symptoms",
                    style: kTitleTextStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SymptomsCard(
                        images: "assets/images/headache.png",
                        symptom: "Headache",
                        isActive: true,
                      ),
                      SymptomsCard(
                        images: "assets/images/caugh.png",
                        symptom: "Caugh",
                        isActive: false,
                      ),
                      SymptomsCard(
                        images: "assets/images/fever.png",
                        symptom: "Fever",
                        isActive: false,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PreventCard(
                    images: "assets/images/wear_mask.png",
                    title:
                        "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
                    text: "Wear face mask",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PreventCard(
                    images: "assets/images/wash_hands.png",
                    title:
                        "Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks",
                    text: "Wear your handas",
                  ),
                ],
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton12(
          press: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomeScreen3App();
            }));
          },
        ));
  }
}

class PreventCard extends StatelessWidget {
  final String images;
  final String title;
  final String text;
  const PreventCard({
    super.key,
    required this.images,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Symptoms1();
        }));
      },
      child: Padding(
        padding: EdgeInsets.only(bottom: 10),
        child: SizedBox(
          height: 156,
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Container(
                height: 136,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 8),
                        blurRadius: 24,
                        color: kShadowColor)
                  ],
                ),
              ),
              Image.asset(images),
              Positioned(
                  left: 130,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    width: MediaQuery.of(context).size.width - 170,
                    height: 136,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text,
                          style: kTitleTextStyle.copyWith(fontSize: 16),
                        ),
                        Text(
                          title,
                          style: TextStyle(fontSize: 12),
                        ),
                        Align(
                            alignment: Alignment.topRight,
                            child: SvgPicture.asset("assets/icons/forward.svg"))
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class SymptomsCard extends StatefulWidget {
  String images;
  String symptom;
  bool isActive;
  SymptomsCard(
      {super.key,
      required this.images,
      required this.isActive,
      required this.symptom});

  @override
  State<SymptomsCard> createState() => _SymptomsCardState();
}

class _SymptomsCardState extends State<SymptomsCard> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              widget.isActive
                  ? BoxShadow(
                      blurRadius: 20,
                      color: kActiveShadowColor,
                      offset: Offset(0, 10),
                    )
                  : BoxShadow(
                      offset: Offset(0, 3), blurRadius: 6, color: kShadowColor)
            ],
          ),
          child: Column(
            children: [
              Image.asset(
                widget.images,
                height: 90,
              ),
              Text(
                widget.symptom,
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        )
      ],
    );
  }
}

class Symptoms1 extends StatelessWidget {
  const Symptoms1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Waer Face Mask"),
      ),
    );
  }
}
