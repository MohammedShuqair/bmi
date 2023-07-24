import 'package:flutter/material.dart';

import '../shared/constants.dart';
import '../shared/text_style.dart';

class CalculateButton extends StatelessWidget {
  final VoidCallback onTap;
  final String hint;
  const CalculateButton({
    super.key,
    required this.onTap,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue,
      child: MaterialButton(
        height: 80.0,
        color: subColor,
        onPressed: onTap,
        child: Text(
          hint,
          textAlign: TextAlign.center,
          style: buttonTextStyle,
        ),
      ),
    );
  }
}
