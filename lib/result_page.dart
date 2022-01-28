import 'package:bmi/reuseable_class.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'reuseable_class.dart';

class Resultpage extends StatelessWidget {
  Resultpage(
      {required this.bmiResult,
      required this.interpretations,
      required this.resultText});
  final String bmiResult;
  final String resultText;
  final String interpretations;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI RESULT'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.bottomLeft,
            child: Text('Your Result ', style: kTitleText),
          )),
          Expanded(
            flex: 5,
            child: ReusableCard(
              acolour,
              () {},
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText.toUpperCase(), style: kResult),
                  Text(
                    bmiResult,
                    style: kBMItext,
                  ),
                  Text(
                    interpretations,
                    textAlign: TextAlign.center,
                    style: kBMIresult,
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: klargebutton,
                ),
              ),
              color: const Color(0xffeb1555),
              margin: const EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 80,
            ),
          )
        ],
      ),
    );
  }
}
