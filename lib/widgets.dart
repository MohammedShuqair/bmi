import 'package:bmi_tt9/text_style.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class Core extends StatelessWidget {
  const Core({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: widgetColor,
      ),
      child: child,
    );
  }
}

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
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Details extends StatelessWidget {
  const Details(
      {Key? key,
      required this.title,
      required this.value,
      required this.onTapIncrement,
      required this.onTapDecrement})
      : super(key: key);
  final String title;
  final int value;
  final VoidCallback onTapIncrement;
  final VoidCallback onTapDecrement;

  @override
  Widget build(BuildContext context) {
    return Core(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: detailStyle),
          Text(
            '$value',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 60.0,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFloatingActionButton(
                onTap: onTapDecrement,
                // mini: true,
                child: const Icon(
                  Icons.remove,
                ),
              ),
              CustomFloatingActionButton(
                onTap: onTapIncrement,
                child: const Icon(
                  Icons.add,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

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
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white),
        ),
      ),
    );
  }
}

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
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 60.0,
                    color: Colors.white,
                  ),
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

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton(
      {Key? key, required this.onTap, required this.child})
      : super(key: key);
  final VoidCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 10,
      padding: const EdgeInsets.all(8),
      constraints: const BoxConstraints(minWidth: 36, minHeight: 36),
      fillColor: Colors.white24,
      shape: const CircleBorder(),
      onPressed: onTap,
      child: child,
    );
  }
}
