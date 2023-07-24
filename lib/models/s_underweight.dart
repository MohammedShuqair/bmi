import 'package:bmi_tt9/models/result.dart';

class SUnderweight extends Result {
  SUnderweight(double bmiNum)
      : super(
            'Severely Underweight',
            'Regain Health: Eat Balanced Meals, Get Professional Support.',
            bmiNum);
}
