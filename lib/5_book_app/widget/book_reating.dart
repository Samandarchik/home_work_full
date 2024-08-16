import 'package:flutter/material.dart';

import 'package:home_work_full/5_book_app/color.dart';

class BookRating extends StatelessWidget {
  double rating;
  BookRating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 6),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(offset: Offset(3, 7), blurRadius: 20, color: ShadowColor5)
          ]),
      child: Column(
        children: [
          Icon(
            Icons.star,
            color: kIconColoil,
            size: 15,
          ),
          Text(
            "$rating",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
