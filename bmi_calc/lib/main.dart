// ignore_for_file: camel_case_types, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(BMI_Calc());
}

class BMI_Calc extends StatelessWidget {
  BMI_Calc({Key? key}) : super(key: key);

  Color myColor = Color(0xFF0A0E21);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context).copyWith(
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: Color(0xFF0A0E21),
              ),
          textTheme: TextTheme(
            bodyText1: TextStyle(color: Colors.white),
            bodyText2: TextStyle(color: Colors.white),
          )),
      home: InputPage(),
    );
  }
}

//  colorScheme : Color(0xFF0A0E21),
