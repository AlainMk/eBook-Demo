import 'package:ebookdemo/screens/home_page.dart';
import 'package:ebookdemo/screens/welcome_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.pink,
        scaffoldBackgroundColor: Colors.grey.shade50,
      ),
      home: WelcomePage(),
    );
  }
}
