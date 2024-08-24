import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home_work_full/6_meditation/color.dart';
import 'package:home_work_full/6_meditation/viget/bottom_nav_bar.dart';
import 'package:home_work_full/6_meditation/viget/search_bar.dart';
import 'package:home_work_full/7_covvid_app/lib/home_screen.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
              color: kBlueLightColor,
              image: DecorationImage(
                  image: AssetImage("assets/images/meditation_bg.png"),
                  fit: BoxFit.fitWidth),
            ),
          ),
          SafeArea(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.05,
                ),
                Text(
                  "Meditation",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.w900, fontSize: 40),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "3-10 MIN Course",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: size.width * .6,
                  child: Text(
                      "Live happier and healthier by learning the fundamentals of meditation and mindfulness"),
                ),
                SizedBox(width: size.width * .5, child: SearchBar1()),
                Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    SeassionCard(
                      press: () {},
                      number: 1,
                      isActive: true,
                    ),
                    SeassionCard(
                      press: () {},
                      number: 2,
                      isActive: false,
                    ),
                    SeassionCard(
                      press: () {},
                      number: 3,
                      isActive: false,
                    ),
                    SeassionCard(
                      press: () {},
                      number: 4,
                      isActive: false,
                    ),
                    SeassionCard(
                      press: () {},
                      number: 5,
                      isActive: false,
                    ),
                    SeassionCard(
                      press: () {},
                      number: 6,
                      isActive: false,
                    ),
                  ],
                ),
                Text(
                  "Meditation",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: 90,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 17),
                            blurRadius: 23,
                            spreadRadius: 13,
                            color: kShadowColor)
                      ]),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                          "assets/icons/Meditation_women_small.svg"),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen7()));
                        },
                        child: Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Basic 2",
                                style: Texttttt.copyWith(fontSize: 16),
                              ),
                              Text("Start your deepen you practice")
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SvgPicture.asset("assets/icons/Lock.svg"),
                      )
                    ],
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class SeassionCard extends StatelessWidget {
  final int number;
  final bool isActive;
  final VoidCallback press;
  const SeassionCard({
    super.key,
    required this.number,
    required this.isActive,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: constraint.maxWidth / 2 - 10,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 17),
                    blurRadius: 23,
                    spreadRadius: -23,
                    color: kShadowColor)
              ]),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: press,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      height: 43,
                      width: 43,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: isActive ? Colors.white : kBlueColor),
                          color: isActive ? kBlueColor : Colors.white,
                          shape: BoxShape.circle),
                      child: Icon(
                        Icons.play_arrow,
                        color: isActive ? Colors.white : kBlueColor,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Session $number",
                      style: Texttttt,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
