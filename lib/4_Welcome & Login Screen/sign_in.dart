import 'package:flutter/material.dart';
import 'package:home_work_full/4_Welcome%20&%20Login%20Screen/constants.dart';
import 'package:home_work_full/5_book_app/welcome_screen.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: [
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/perosn.jpeg"))),
          )),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("SIGN IN", style: stiletext),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "SIGN UP",
                      style: TextStyle(fontSize: 20, color: kPrimaryColor),
                    )
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: kflo),
                    Container(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: kflo1)
                  ],
                ),
                const Spacer(),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 20.0, right: 20, left: 20),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white.withOpacity(.5),
                            ),
                            shape: BoxShape.circle),
                        child: Icon(
                          Icons.facebook_outlined,
                          color: Colors.white.withOpacity(.5),
                          size: 60,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white.withOpacity(.5),
                            ),
                            shape: BoxShape.circle),
                        child: Icon(
                          Icons.telegram,
                          color: Colors.white.withOpacity(.5),
                          size: 60,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return WelcomeScreen();
                            }));
                          },
                          icon: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                                color: kPrimaryColor, shape: BoxShape.circle),
                            child: const Icon(
                              Icons.arrow_forward_ios,
                              size: 20,
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
