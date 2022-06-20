// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:bmi_calc/constants.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String gender;

  const IconContent({required this.icon, required this.gender});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(gender, style: kLabelTextStyle),
      ],
    );
  }
}
