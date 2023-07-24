import 'package:bmi_tt9/shared/constants.dart';
import 'package:bmi_tt9/screens/bmi/bmi.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(context),
      home: const BMI(),
    );
  }
}

ThemeData theme(BuildContext context) {
  return ThemeData.dark().copyWith(
    scaffoldBackgroundColor: backgroundColor,
    sliderTheme: const SliderThemeData(
        thumbShape:
            RoundSliderThumbShape(enabledThumbRadius: 15, pressedElevation: 45),
        activeTrackColor: Colors.white,
        thumbColor: subColor,
        trackHeight: 1,
        inactiveTrackColor: Colors.grey),
    appBarTheme: const AppBarTheme(
      backgroundColor: backgroundColor,
      elevation: 0,
      centerTitle: true,
    ),
    colorScheme: Theme.of(context)
        .colorScheme
        .copyWith(primary: Colors.red, secondary: Colors.white24),
  );
}
