import 'package:flutter/material.dart';

// G E S T U R E - D E T E C T O R

class MyGestureDetector extends StatelessWidget {
  const MyGestureDetector({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Tap Me!!");
      },
      onDoubleTap: () {
        print("Double Tapped!!");
      },
      onLongPress: () {
        print("Long Press");
      },
      child: Container(
        height: 50,
        width: 500,
        color: Colors.green,
        child: const Center(
          child: Text(
            "Tap Me!!",

            // modify the text widget with color, size, and bold
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
