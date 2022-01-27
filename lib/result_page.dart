import 'package:bmi/reuseable_class.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'reuseable_class.dart';

class Resultpage extends StatelessWidget {
  Resultpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI RESULT'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Container(
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
                  children: [Text('Normal', style: kResult)],
                )),
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
