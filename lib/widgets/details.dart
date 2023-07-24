import 'package:flutter/material.dart';
import '../shared/text_style.dart';
import 'core.dart';
import 'custom_floating_action_button.dart';

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
            style: numberTextStyle,
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
