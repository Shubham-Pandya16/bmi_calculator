import 'dart:math';

class BMICalculator {
  final int height;
  final int weight;

  BMICalculator({
    required this.height,
    required this.weight,
  });

  double _bmi = 0.0;

  String calculateBMI(){
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

    String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5 && _bmi < 24.9) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

}