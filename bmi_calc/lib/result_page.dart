// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:bmi_calc/constants.dart';
import 'package:bmi_calc/widgets/bottom_button.dart';
import 'package:bmi_calc/widgets/reusable_container.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final bmiIndex;
  final bmiType;
  final bmiInterpretition;

  const ResultPage(
      {required this.bmiIndex,
      required this.bmiInterpretition,
      required this.bmiType,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: ktitleStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: reusableContainer(
              colour: kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiType,
                    style: kresultTextStyle,
                  ),
                  Text(
                    bmiIndex,
                    style: kBMINumStyle,
                  ),
                  Text(
                    bmiInterpretition,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22),
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            buttonText: 'RECALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
