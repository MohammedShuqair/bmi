import 'package:flutter/material.dart';

import '../shared/constants.dart';

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
