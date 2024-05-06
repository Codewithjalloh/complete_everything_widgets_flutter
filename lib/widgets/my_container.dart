import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    // center the container
    return Center(
      child: Container(
        height: 100,
        width: 200,
        color: Colors.red,
        child: const Text(
          "My Container Text",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        // Maintain everything inside the box
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        // Maintain everything outside the box
        margin:
            const EdgeInsets.only(left: 20, right: 100, bottom: 100, top: 100),
      ),
    );
  }
}
