import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String gender;
  final int weight;
  final int height;
  final int age;

  Result({required this.gender, required this.weight, required this.height, required this.age});

  @override
  Widget build(BuildContext context) {
    double bmi = calculateBMI(weight, height);
    double bmr = calculateBMR(weight, height, age, gender);

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your BMI is:',
              style: TextStyle(fontSize: 20),
            ),
            
            SizedBox(height: 20),
            Text(
              
              getBMIStatus(bmi),
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Your BMR is: $bmr kcal',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

  double calculateBMI(int weight, int height) {
    return weight / ((height / 100) * (height / 100));
  }

  String getBMIStatus(double bmi) {
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi < 24.9) {
      return 'Normal weight';
    } else if (bmi < 29.9) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }
  double calculateBMR(int weight, int height, int age, String gender) {
    if (gender.toLowerCase() == 'male') {
      return (10 * weight) + (6.25 * height) - (5 * age) + 5;
    } else if (gender.toLowerCase() == 'female') {
      return (10 * weight) + (6.25 * height) - (5 * age) - 161;
    } else {
      return 0;
    }
  }
}
