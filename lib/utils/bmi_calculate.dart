import 'package:flutter/material.dart';

class BmiCalculator {
  static double calculate(double weight, double heightCm) {
    double heightM = heightCm / 100;
    return weight / (heightM * heightM);
  }
    static String getResult(double bmi) {
    if (bmi < 18.5) {
      return "Underweight";
    } else if (bmi < 25) {
      return "Normal Weight";
    } else if (bmi < 30) {
      return "Overweight";
    } else {
      return "Obese";
    }
  }

    static Color getColor(double bmi) {
    if (bmi < 18.5) {
      return Colors.blue;
    } else if (bmi < 25) {
      return Colors.green;
    } else if (bmi < 30) {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }
}