import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  const Box({super.key, required this.text, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      height: 140,
      alignment: Alignment.center,
      color: backgroundColor,
      child: Text(text),
    );
  }
}