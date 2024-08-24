import 'package:flutter/material.dart';
import 'package:home_work_full/1_course_app/home_page_1.dart';

import 'package:home_work_full/8_login_app/constants.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Color.fromARGB(255, 244, 67, 54),
              foregroundColor: Colors.white),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              foregroundColor: Colors.white,
              backgroundColor: kPrimaryColor,
              shape: const StadiumBorder(),
              maximumSize: const Size(double.infinity, 56),
              minimumSize: const Size(double.infinity, 56),
            ),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: HomePage1());
  }
}
