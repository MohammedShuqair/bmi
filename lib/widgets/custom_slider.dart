import 'package:flutter/material.dart';
import '../shared/text_style.dart';
import 'core.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({Key? key, required this.height, required this.onChange})
      : super(key: key);
  final double height;
  final ValueChanged<double>? onChange;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Core(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'HEIGHT',
              style: detailStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  '${height.round()}',
                  style: numberTextStyle,
                ),
                const Text(
                  '' + 'cm',
                  style: detailStyle,
                ),
              ],
            ),
            Slider(
              value: height,
              max: 300.0,
              min: 30.0,
              onChanged: onChange,
            ),
          ],
        ),
      ),
    );
  }
}
