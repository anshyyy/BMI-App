// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:bmi/reuseable_class.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconWidget.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = acolour;
  Color femaleCardColour = acolour;
  void updateColour(Gender gender) {
    if (gender == Gender.male) {
      if (maleCardColour == icolour) {
        maleCardColour = acolour;
      } else {
        maleCardColour = icolour;
        femaleCardColour = acolour;
      }
    } else {
      if (femaleCardColour == icolour) {
        femaleCardColour = acolour;
      } else {
        femaleCardColour = icolour;
        maleCardColour = acolour;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('                      BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(Gender.male);
                      });
                    },
                    child: ReusableCard(
                      maleCardColour,
                      Icon_widget(
                        text: "MALE",
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(Gender.female);
                      });
                    },
                    child: ReusableCard(
                      femaleCardColour,
                      Icon_widget(text: "FEMALE", icon: FontAwesomeIcons.venus),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
                const Color(0xff1D1E33),
                Column(
                  children: [
                    Text(
                      "HEIGHT",
                      style: label,
                    ),
                    Row(
                      children: [
                        Text(
                          "180",
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w900,
                          ),
                        )
                      ],
                    )
                  ],
                )),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(Color(0xff1D1E33))),
                Expanded(
                  child: ReusableCard(
                    const Color(0xff1D1E33),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: const Color(0xffeb1555),
            margin: const EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 80,
          )
        ],
      ),
    );
  }
}
