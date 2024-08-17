import 'package:flutter/material.dart';
import 'package:home_work_full/5_book_app/color.dart';
import 'package:home_work_full/5_book_app/widget/book_reating.dart';
import 'package:home_work_full/5_book_app/widget/two_side_rounded_button.dart';

class ReadingListCard extends StatelessWidget {
  final String images;
  final String title;
  final String auth;
  final double rating;
  final VoidCallback pressDetails;
  final VoidCallback pressRead;
  const ReadingListCard({
    super.key,
    required this.images,
    required this.title,
    required this.auth,
    required this.rating,
    required this.pressDetails,
    required this.pressRead,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 40, left: 24),
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
                      color: kShadowColor5),
                ],
              ),
            ),
          ),
          Image.asset(
            images,
            width: 150,
          ),
          Positioned(
            top: 35,
            right: 10,
            child: Column(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
                BookRating(
                  rating: rating,
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
                        maxLines: 2,
                        text: TextSpan(
                          style: TextStyle(color: kBlackColor),
                          children: [
                            TextSpan(
                              text: "$title\n",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                                text: "$auth",
                                style: TextStyle(color: kLightBlackColor))
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: pressDetails,
                          child: Container(
                            width: 101,
                            padding: EdgeInsets.symmetric(vertical: 10),
                            alignment: Alignment.center,
                            child: Text(
                              "Details",
                            ),
                          ),
                        ),
                        Expanded(
                            child: TwoSideRoundedButton(
                          text: "Read",
                          radious: 29,
                          press: () {},
                        ))
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
