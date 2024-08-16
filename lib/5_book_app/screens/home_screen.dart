import 'package:flutter/material.dart';
import 'package:home_work_full/5_book_app/color.dart';
import 'package:home_work_full/5_book_app/widget/book_reating.dart';

class HomeScreen4 extends StatelessWidget {
  const HomeScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            fit: BoxFit.fitWidth,
            image: AssetImage("assets/images/main_page_bg.png"),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * .1,
              ),
              RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 40),
                  children: [
                    TextSpan(text: "What are you \nreading "),
                    TextSpan(
                        text: "today?",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 245,
                width: 202,
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 221,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 30,
                                color: ShadowColor5),
                          ],
                        ),
                      ),
                    ),
                    Image.asset(
                      "assets/images/book-1.png",
                      width: 150,
                    ),
                    Positioned(
                      top: 35,
                      right: 10,
                      child: Column(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_border)),
                          BookRating(
                            rating: 4.9,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                        top: 160,
                        child: Container(
                          height: 85,
                          width: 202,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(color: kBlackColor),
                                    children: [
                                      TextSpan(
                                        text: "Crushing & Influence\n",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      TextSpan(
                                          text: "Gary Venchuk",
                                          style: TextStyle(
                                              color: kLightBlackColor))
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(),
                              Row(
                                children: [
                                  Container(
                                    width: 101,
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Details",
                                    ),
                                  ),
                                  Expanded(
                                      child: Container(
                                    padding: EdgeInsets.symmetric(vertical: 10),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: kBlackColor,
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(29),
                                            bottomRight: Radius.circular(29))),
                                    child: Text(
                                      "Read",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ))
                                ],
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
