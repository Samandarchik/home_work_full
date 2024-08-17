import 'package:flutter/material.dart';
import 'package:home_work_full/5_book_app/color.dart';
import 'package:home_work_full/5_book_app/widget/RoundedButton.dart';
import 'package:home_work_full/5_book_app/widget/book_reating.dart';
import 'package:home_work_full/6_Meditation_app/home_screen6.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: size.height * .4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/bg.png"),
                          fit: BoxFit.fitWidth),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * .1,
                        ),
                        BookInfo(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: size.height * .4 - 30),
                  child: Column(
                    children: [
                      ChapterCard(
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen6()));
                        },
                        name: "Money",
                        tag: "Lise is about change",
                        chapterNumber: 1,
                      ),
                      ChapterCard(
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen6()));
                        },
                        name: "Power",
                        tag: "Everything loves power",
                        chapterNumber: 2,
                      ),
                      ChapterCard(
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen6()));
                        },
                        name: "Influence",
                        tag: "Influence easily like never before",
                        chapterNumber: 3,
                      ),
                      ChapterCard(
                        press: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen6()));
                        },
                        name: "Win",
                        tag: "Winning is what matters",
                        chapterNumber: 4,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                                text: TextSpan(
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                    children: [
                                  TextSpan(text: "You might also "),
                                  TextSpan(
                                      text: "like....",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold))
                                ])),
                            Stack(
                              children: [
                                Container(
                                  height: 180,
                                  width: double.infinity,
                                ),
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        left: 24, top: 20, right: 150),
                                    height: 160,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Color(0xFFFFF8F9),
                                        borderRadius:
                                            BorderRadius.circular(29)),
                                    child: Column(
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                            children: [
                                              TextSpan(
                                                text:
                                                    "How To Win \nFriends & Influence\n",
                                                style: TextStyle(fontSize: 20),
                                              ),
                                              TextSpan(
                                                  text: "Gary Venchuk",
                                                  style: TextStyle(
                                                      color: kLightBlackColor))
                                            ],
                                          ),
                                        ),
                                        Row(children: [
                                          BookRating(rating: 4.8),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Expanded(
                                              child: RoundedButton(
                                                  text1: "Read",
                                                  press: () {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                HomeScreen6()));
                                                  },
                                                  verticalPadding: 8))
                                        ])
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: Image.asset(
                                    "assets/images/book-2.png",
                                    width: 150,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ChapterCard extends StatelessWidget {
  final String name;
  final String tag;
  final int chapterNumber;
  final VoidCallback press;

  const ChapterCard(
      {super.key,
      required this.press,
      required this.name,
      required this.tag,
      required this.chapterNumber});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width - 48,
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(38.5),
        color: Colors.white,
        boxShadow: [
          BoxShadow(offset: Offset(0, 10), blurRadius: 33, color: kShadowColor5)
        ],
      ),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Chapter $chapterNumber : $name\n",
                  style: TextStyle(
                      fontSize: 16,
                      color: kBlackColor,
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: "$tag",
                  style: TextStyle(color: kLightBlackColor),
                ),
              ],
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: press,
            icon: Icon(
              Icons.arrow_forward_ios,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}

class BookInfo extends StatelessWidget {
  const BookInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Crushing &",
              style: head,
            ),
            Text(
              "Influence",
              style: head.copyWith(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                          maxLines: 5,
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.black.withOpacity(.7)),
                          "When the earth was flat andeveryone wanted to win the gameol the best and people and winning with an A game with all the things you have"),
                      SizedBox(
                        height: 5,
                      ),
                      RoundedButton(
                          verticalPadding: 10, text1: "Read", press: () {})
                    ],
                  ),
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.favorite_border)),
                    BookRating(rating: 4.9)
                  ],
                )
              ],
            )
          ],
        )),
        Image.asset(
          "assets/images/book-1.png",
          height: 200,
        ),
      ],
    );
  }
}
