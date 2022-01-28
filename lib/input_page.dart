import 'package:bmi/result_page.dart';
import 'package:flutter/material.dart';
import 'package:bmi/reuseable_class.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconWidget.dart';
import 'constants.dart';
import 'result_page.dart';
import 'functionality.dart';

enum Gender {
  male,
  female,
  Null,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColour = icolour;
  Color femaleCardColour = icolour;
  Gender selectedGender = Gender.Null;
  int height = 180;
  int weight = 20;
  int age = 10;
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
                  child: ReusableCard(
                    selectedGender == Gender.male ? icolour : acolour,
                    () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    Icon_widget(
                      text: "MALE",
                      icon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    selectedGender == Gender.female ? icolour : acolour,
                    () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    Icon_widget(text: "FEMALE", icon: FontAwesomeIcons.venus),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
                const Color(0xff1D1E33),
                () {},
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "HEIGHT",
                      style: label,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: kNumberText,
                        ),
                        Text(
                          "cm",
                          style: label,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbColor: Color(0xffeb1555),
                        overlayColor: Color(0x29eb1555),
                        inactiveTrackColor: Colors.grey,
                        activeTrackColor: Color(0xffeb1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30),
                      ),
                      child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 220.0,
                          onChanged: (double newValue) {
                            // print(newValue);
                            setState(() {
                              height = newValue.round();
                            });
                          }),
                    )
                  ],
                )),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                        Color(0xff1D1E33),
                        () {},
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('WEIGHT', style: label),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.baseline,
                              textBaseline: TextBaseline.alphabetic,
                              children: [
                                Text(
                                  weight.toString(),
                                  style: kNumberText,
                                ),
                                Text(
                                  'kg',
                                  style: label,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 15,
                                ),
                                FloatingActionButton(
                                  backgroundColor: Color(0xFF4c4f5e),
                                  child: Icon(Icons.add),
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                FloatingActionButton(
                                  backgroundColor: Color(0xFF4c4f5e),
                                  child: Icon(Icons.remove),
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ))),
                Expanded(
                  child: ReusableCard(
                      const Color(0xff1D1E33),
                      () {},
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE', style: label),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                age.toString(),
                                style: kNumberText,
                              ),
                              Text(
                                'years',
                                style: label,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 15,
                              ),
                              FloatingActionButton(
                                backgroundColor: Color(0xFF4c4f5e),
                                child: Icon(Icons.add),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              FloatingActionButton(
                                backgroundColor: Color(0xFF4c4f5e),
                                child: Icon(Icons.remove),
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                            ],
                          ),
                        ],
                      )),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Brain calc = Brain(height: height, weight: weight);
              String bmi = calc.calculateBmi();
              String res = calc.getResult();
              String inter = calc.getInterpretations();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Resultpage(
                            bmiResult: bmi,
                            resultText: res,
                            interpretations: inter,
                          )));
            },
            child: Container(
              child: Center(
                child: Text(
                  'CALCULATE',
                  style: klargebutton,
                ),
              ),
              color: const Color(0xffeb1555),
              margin: const EdgeInsets.only(top: 10),
              padding: EdgeInsets.only(bottom: 5),
              width: double.infinity,
              height: 80,
            ),
          )
        ],
      ),
    );
  }
}
