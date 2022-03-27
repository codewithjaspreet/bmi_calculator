import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/Screens/reusecard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColour,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Normal',
                      style: RTitleTextStyle,
                    ),
                    Text(
                      '18.3',
                      style: kBmiTextStyle,
                    ),
                    Text(
                      'Your BMI is quite low , you should eat more !',
                      textAlign: TextAlign.center,
                      style: kBodyStyle,
                    ),
                  ],
                ),
                onPress: () {},
              ),
            )
          ],
        ));
  }
}
