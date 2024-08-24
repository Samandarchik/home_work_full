import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home_work_full/6_meditation/sceren/details_screen.dart';
import 'package:home_work_full/6_meditation/viget/bottom_nav_bar.dart';
import 'package:home_work_full/6_meditation/viget/category_card.dart';
import 'package:home_work_full/6_meditation/viget/search_bar.dart';

class HomePage6 extends StatelessWidget {
  const HomePage6({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * .45,
            decoration: const BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                          color: Color(0XFFF2BEA1), shape: BoxShape.circle),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),
                  Text(
                    "Good Mornign \n Shishir",
                    style: Theme.of(context)
                        .textTheme
                        .displayLarge
                        ?.copyWith(fontWeight: FontWeight.w900, fontSize: 45),
                  ),
                  SearchBar1(),
                  Expanded(
                      child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: .85,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    children: [
                      CategoryCard(
                          press: () {},
                          SvgSrc: "assets/icons/Hamburger.svg",
                          title: "Diet Recommendation"),
                      CategoryCard(
                        press: () {},
                        SvgSrc: "assets/icons/Excrecises.svg",
                        title: "Kegel Exercises",
                      ),
                      CategoryCard(
                          press: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DetailsScreen();
                            }));
                          },
                          SvgSrc: "assets/icons/Meditation.svg",
                          title: "Meditation"),
                      CategoryCard(
                          press: () {},
                          SvgSrc: "assets/icons/yoga.svg",
                          title: "Yoga"),
                    ],
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
