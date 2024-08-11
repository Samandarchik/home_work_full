import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FloatingActionButton12 extends StatelessWidget {
  final VoidCallback press;

  const FloatingActionButton12({super.key, required this.press});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(),
        Row(
          children: [
            InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 56,
                  width: 56,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12)),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                )),
            SizedBox(
              width: 20,
            ),
            InkWell(
                onTap: press,
                child: Container(
                  height: 56,
                  width: 56,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12)),
                  child: Icon(
                    CupertinoIcons.right_chevron,
                    color: Colors.white,
                  ),
                )),
          ],
        ),
      ],
    );
  }
}
