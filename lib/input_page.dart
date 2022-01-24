import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colour: Color(0xff1D1E33)),
                ),
                Expanded(child: ReusableCard(colour: Color(0xff1D1E33)))
              ],
            )),
            Expanded(
                child: ReusableCard(
              colour: Color(0xff1D1E33),
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  colour: Color(0xff1D1E33),
                )),
                Expanded(
                  child: ReusableCard(
                    colour: Color(0xff1D1E33),
                  ),
                )
              ],
            )),
            Container(
              color: Color(0xffeb1555),
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 80,
            )
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour});

  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
