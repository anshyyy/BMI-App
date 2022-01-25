import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff0A0E21),
        textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.white)),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff0A0E21), //use your hex code here
        ),
      ),
      home: const InputPage(),
    );
  }
}
