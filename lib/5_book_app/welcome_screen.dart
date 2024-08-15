import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_work_full/5_book_app/screens/home_screen.dart';
import 'package:home_work_full/5_book_app/widget/RoundedButton.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Bitmap.png"), fit: BoxFit.fill),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black54, fontSize: 40),
                children: [
                  TextSpan(
                    text: "flamin",
                  ),
                  TextSpan(
                      text: "go",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black))
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .6,
              child: RoundedButton(
                text1: "start reading",
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomeScreen4();
                  }));
                },
                verticalPadding: 24,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
