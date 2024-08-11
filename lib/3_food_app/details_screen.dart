import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home_work_full/3_food_app/color3.dart';
import 'package:home_work_full/4_Welcome%20&%20Login%20Screen/welcome_screen.dart';
import 'package:home_work_full/floating_action_button.dart';

class DetailsScreen3 extends StatelessWidget {
  const DetailsScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_back_ios,
                ),
                SvgPicture.asset(
                  "assets/icons/menu copy 3.svg",
                  height: 11,
                )
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.all(6),
              height: 305,
              width: 305,
              decoration:
                  BoxDecoration(color: kSecondaryColor, shape: BoxShape.circle),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/image_1_big.png"),
                        fit: BoxFit.cover)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: "Vegan salad bowl\n",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  TextSpan(
                      text: "With red tomato",
                      style: TextStyle(color: Colors.black54))
                ])),
                Text(
                  "\$20",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: kPrimaryColor),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
                "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source."),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.47,
                    height: 70,
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(.3),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "Add to bag",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(CupertinoIcons.right_chevron)
                          ],
                        )),
                  ),
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                            color: kPrimaryColor.withOpacity(.4),
                            shape: BoxShape.circle),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: kPrimaryColor),
                          child: SvgPicture.asset("assets/icons/bag.svg"),
                        ),
                      ),
                      Positioned(
                          bottom: 12,
                          right: 12,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.white, shape: BoxShape.circle),
                            child: Center(
                                child: Text(
                              "0",
                              style: TextStyle(color: kPrimaryColor),
                            )),
                          )),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 100.0),
        child: FloatingActionButton12(press: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return WelcomeScreen();
          }));
        }),
      ),
    );
  }
}
