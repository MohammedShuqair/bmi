import 'package:bmi_tt9/models/result.dart';

class VSUnderweight extends Result {
  VSUnderweight(double bmiNum)
      : super(
          'Very Severely Underweight',
          'Get Stronger: Eat Well and Seek Help from Experts.',
          bmiNum,
        );
}
