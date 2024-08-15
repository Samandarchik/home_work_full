import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Text(number),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [],
          ),
        ],
      ),
    );
  }
}

String number = "1";

class Mynumber extends StatefulWidget {
  int number1;
  String alpabet;
  Mynumber({super.key, required this.number1, required this.alpabet});

  @override
  State<Mynumber> createState() => _MynumberState();
}

class _MynumberState extends State<Mynumber> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          number = number + "${widget.number1}";
        });
      },
      child: Container(
        margin: EdgeInsets.all(20),
        alignment: Alignment.center,
        height: 50,
        width: 50,
        decoration: BoxDecoration(color: Colors.black, shape: BoxShape.circle),
        child: Text(
          "${widget.number1}",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
    );
    ;
  }
}
