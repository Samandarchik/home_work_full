import 'package:flutter/material.dart';
import 'package:home_work_full/1_course_app/home_page_1.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.red, foregroundColor: Colors.white),
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage1(),
    );
  }
}
