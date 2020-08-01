import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BMICalc());
}

class BMICalc extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor:  Color(0xFF0A0E21) ,
        textTheme: TextTheme(body1: TextStyle(color: Colors.white))
      ) ,
      home: Inputpage(),
    );
  }
}


