import 'package:flutter/material.dart';

import 'package:home_work_full/5_book_app/color.dart';

class BookRating extends StatelessWidget {
  final double rating;
  const BookRating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
                offset: const Offset(3, 7),
                blurRadius: 20,
                color: kShadowColor5)
          ]),
      child: Column(
        children: [
          const Icon(
            Icons.star,
            color: kIconColoil,
            size: 15,
          ),
          Text(
            "$rating",
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
