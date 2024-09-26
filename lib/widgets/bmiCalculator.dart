import 'dart:math';

class BMICalculator {
  final int height;
  final int weight;

  BMICalculator({
    required this.height,
    required this.weight,
  });

  double _bmi = 0.0;

  double calculateBMI(){
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toDouble();
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
  
  String explanation(){
    if (_bmi >= 25) {
      return "Prioritize a balanced diet with reduced portion sizes, "
      "focusing on whole foods like vegetables, fruits, and lean proteins."
      " Regular physical activity, including cardio and strength training, "
      "can help manage weight and improve overall health.";
    } else if (_bmi > 18.5 && _bmi < 24.9) {
      return "Maintain a balanced diet and regular physical activity to sustain "
      "your weight. Aim for a variety of fruits, vegetables, lean proteins, and whole grains.";
    } else {
      return "Focus on incorporating nutrient-dense, calorie-rich foods "
      "like nuts, dairy, and lean proteins into your diet. Consider strength training to build muscle mass";
    }
  
  }
}