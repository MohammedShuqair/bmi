import 'package:flutter/material.dart';
import '../shared/constants.dart';
import '../shared/text_style.dart';

class Gender extends StatelessWidget {
  const Gender(
      {Key? key,
      required this.onTap,
      required this.isMale,
      required this.title,
      required this.icon})
      : super(key: key);
  final VoidCallback onTap;
  final bool isMale;
  final String title;
  final IconData icon;
  const Gender.male({
    super.key,
    required this.onTap,
    required this.isMale,
    this.icon = Icons.male,
    this.title = "Male",
  });
  const Gender.female({
    super.key,
    required this.onTap,
    required this.isMale,
    this.icon = Icons.female,
    this.title = "Female",
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isMale ? widgetColor : Colors.white12,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 64,
            ),
            const SizedBox(
              height: 12,
            ),
            Text(title, style: genderTextStyle),
          ],
        ),
      ),
    );
  }
}
