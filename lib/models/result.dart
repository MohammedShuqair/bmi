abstract class Result {
  final String category;
  final String caption;
  final double bmiNum;

  Result(this.category, this.caption, this.bmiNum);
}

class VSUnderweight extends Result {
  VSUnderweight(double bmiNum)
      : super(
          'Very Severely Underweight',
          'Get Stronger: Eat Well and Seek Help from Experts.',
          bmiNum,
        );
}

class SUnderweight extends Result {
  SUnderweight(double bmiNum)
      : super(
            'Severely Underweight',
            'Regain Health: Eat Balanced Meals, Get Professional Support.',
            bmiNum);
}

class Underweight extends Result {
  Underweight(double bmiNum)
      : super('Underweight',
            'Stay Healthy: Eat Good Food, Balance Your Lifestyle.', bmiNum);
}

class Normal extends Result {
  Normal(double bmiNum)
      : super('Normal', 'Be Well: Eat Right, Stay Active, Feel Great.', bmiNum);
}

class Overweight extends Result {
  Overweight(double bmiNum)
      : super('Overweight', 'Take Control: Eat Healthy, Exercise Regularly.',
            bmiNum);
}

class MObese extends Result {
  MObese(double bmiNum)
      : super('Moderately Obese', 'Choose Health: Eat Smart, Move Your Body.',
            bmiNum);
}

class SObese extends Result {
  SObese(double bmiNum)
      : super('Severely Obese',
            'Transform Your Health: Seek Professional Assistance.', bmiNum);
}

class VSObese extends Result {
  VSObese(double bmiNum)
      : super('Very Severely Obese',
            'Start a New Journey: Get Help for a Healthier You.', bmiNum);
}
