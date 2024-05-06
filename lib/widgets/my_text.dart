import 'dart:ui';

import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Sulay Jalloh",
      style: TextStyle(
          backgroundColor: Colors.green,
          fontStyle: FontStyle.italic,
          textBaseline: TextBaseline.alphabetic,
          letterSpacing: 24,
          color: Colors.red,
          fontSize: 23,
          fontWeight: FontWeight.bold,
          wordSpacing: 20),
    );
  }
}
