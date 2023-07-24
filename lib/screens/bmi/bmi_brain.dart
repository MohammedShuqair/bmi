import 'dart:math';
import '../../models/m_obese.dart';
import '../../models/normal.dart';
import '../../models/overweight.dart';
import '../../models/result.dart';
import '../../models/s_obese.dart';
import '../../models/s_underweight.dart';
import '../../models/underweight.dart';
import '../../models/vs_obese.dart';
import '../../models/vs_underweight.dart';

class BMIBrain {
  double _height = 187;

  double get height => _height;

  set height(double value) {
    _height = value;
  }

  bool? _isMale;
  int _weight = 107;
  int _age = 22;

  bool? get isMale => _isMale;

  set isMale(bool? value) {
    _isMale = value;
  }

  int get weight => _weight;

  set weight(int value) {
    _weight = value;
  }

  void incWeight() {
    _weight++;
  }

  void decWeight() {
    _weight--;
  }

  int get age => _age;

  set age(int value) {
    _age = value;
  }

  void incAge() {
    _age++;
  }

  void decAge() {
    _age--;
  }

  double bmiCalculator() {
    return _weight / pow(_height / 100, 2);
  }

  Result handelResult() {
    if (bmiCalculator() < 15) {
      return VSUnderweight(bmiCalculator());
    } else if (bmiCalculator() <= 16) {
      return SUnderweight(bmiCalculator());
    } else if (bmiCalculator() < 18.5) {
      return Underweight(bmiCalculator());
    } else if (bmiCalculator() < 25) {
      return Normal(bmiCalculator());
    } else if (bmiCalculator() < 30) {
      return Overweight(bmiCalculator());
    } else if (bmiCalculator() < 35) {
      return MObese(bmiCalculator());
    } else if (bmiCalculator() <= 40) {
      return SObese(bmiCalculator());
    } else if (bmiCalculator() > 40) {
      return VSObese(bmiCalculator());
    } else {
      throw "error in handelResult";
    }
  }
}
