import 'package:bmi_tt9/models/result.dart';

class Overweight extends Result {
  Overweight(double bmiNum)
      : super('Overweight', 'Take Control: Eat Healthy, Exercise Regularly.',
            bmiNum);
}
