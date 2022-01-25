import 'package:flutter/material.dart';
import 'package:bmi/reuseable_class.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconWidget.dart';

const icolour = Color(0xff111328);
const acolour = Color(0xff1D1E33);
const containerColour = Color(0xffeb1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = icolour;
  Color femaleCardColour = icolour;
  void updateColour(int gender) {
    if (gender == 1) {
      if (maleCardColour == icolour) {
        maleCardColour = acolour;
        if (femaleCardColour == acolour) {
          femaleCardColour = icolour;
        }
      } else {
        maleCardColour = icolour;
        if (femaleCardColour == icolour) {
          femaleCardColour = acolour;
        }
      }
    } else {
      if (femaleCardColour == icolour) {
        femaleCardColour = acolour;
        if (maleCardColour == acolour) {
          maleCardColour = icolour;
        }
      } else {
        femaleCardColour = icolour;
        if (maleCardColour == icolour) {
          maleCardColour = acolour;
        }
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
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColour(1);
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
                        updateColour(2);
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
            ),
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
