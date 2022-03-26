import 'package:bmi_calculator/reusecard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'iconcontent.dart';

const bottomContainerHeight = 80.0;
const activeCardColour = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  colour: activeCardColour,
                  cardChild: IconReuse(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  cardChild: IconReuse(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                  colour: activeCardColour,
                )),
              ],
            )),
            Expanded(
                child: ReusableCard(
              cardChild: IconReuse(
                icon: FontAwesomeIcons.venus,
                label: 'FEMALE',
              ),
              colour: activeCardColour,
            )),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  colour: activeCardColour,
                  cardChild: IconReuse(
                    label: 'asdas',
                    icon: FontAwesomeIcons.r,
                  ),
                )),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                    cardChild: IconReuse(
                      label: 'ASDG',
                      icon: FontAwesomeIcons.addressBook,
                    ),
                  ),
                )
              ],
            )),
            Container(
              color: bottomContainerColor,
              margin: const EdgeInsets.only(top: 10.0),
              height: bottomContainerHeight,
              width: double.infinity,
            )
          ],
        ));
  }
}
