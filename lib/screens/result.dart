import 'package:flutter/material.dart';
import '../shared/constants.dart';
import '../models/result.dart';
import '../shared/text_style.dart';
import '../widgets/calculate_button.dart';

class BMIResult extends StatelessWidget {
  final Result result;
  const BMIResult({
    super.key,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: const Text(
          'Your Result',
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 22),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: widgetColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              result.category,
              style: categoryTextStyle,
            ),
            Text(
              result.bmiNum.toStringAsFixed(1),
              style: numberTextStyle,
            ),
            Text(
              result.caption,
              textAlign: TextAlign.center,
              style: captionTextStyle,
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalculateButton(
          onTap: () {
            Navigator.pop(context);
          },
          hint: 'Re-Calculate'),
    );
  }
}
