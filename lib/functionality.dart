import 'dart:math';

class Brain {
  Brain({required this.height, required this.weight});
  final int height;
  final int weight;
  double _result = 0;

  String calculateBmi() {
    _result = weight / pow(height / 100, 2);
    return _result.toStringAsFixed(1);
  }

  String getResult() {
    if (_result < 18.5) {
      return 'Underweight';
    } else if (_result >= 18.5 && _result <= 24.9) {
      return 'Normal';
    } else if (_result >= 25 && _result <= 29.9) {
      return 'Overweight';
    } else {
      return 'Obesity';
    }
  }

  String getInterpretations() {
    if (_result < 18.5) {
      return 'You have a lower than normal body weight. You should eat a bit more.';
    } else if (_result >= 18.5 && _result <= 24.9) {
      return 'You have a normal body weight. Good Job!';
    } else if (_result >= 25 && _result <= 29.9) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else {
      return "You're so fat. you should work out!!";
    }
  }
}
