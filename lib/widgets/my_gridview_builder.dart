import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyGridviewBuilder extends StatelessWidget {
  const MyGridviewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // scrollDirection: Axis.horizontal,
      // scrollDirection: Axis.vertical,
      // reverse: false,
      // shrinkWrap: false,
      // physics: ScrollPhysics(),
      // dragStartBehavior: DragStartBehavior.down,

      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemBuilder: (context, index) => Container(
        color: Colors.deepPurpleAccent,
        margin: EdgeInsets.all(12),
      ),
    );
  }
}
