import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Sulay Jalloh",
      style: TextStyle(
          color: Colors.red,
          fontSize: 23,
          fontWeight: FontWeight.bold,
          wordSpacing: 20),
    );
  }
}
