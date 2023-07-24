import 'package:flutter/material.dart';

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
