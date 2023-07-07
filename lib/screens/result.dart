import 'package:bmi_tt9/widgets.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../models/result.dart';

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
              style: const TextStyle(
                  color: resultCaption,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            Text(
              result.bmiNum.toStringAsFixed(1),
              style: const TextStyle(
                fontSize: 60.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              result.caption,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 18),
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
