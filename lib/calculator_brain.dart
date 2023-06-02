import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int? height;
  final int? weight;

  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overwieght';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body mass index. Try to exercise and fix diet';
    } else if (_bmi > 18.5) {
      return 'You are in the normal body mass index range - keep it up!';
    } else {
      return 'You are in the lower than normal body mass index range. Manage your diet';
    }
  }
}
