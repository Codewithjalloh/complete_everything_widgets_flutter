import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  const MyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.end,
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      // mainAxisAlignment: MainAxisAlignment.center,

      // crossAxisAlignment: CrossAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      // crossAxisAlignment: CrossAxisAlignment.baseline,

      children: [
        Container(
          height: 100,
          width: 100,
          color: Colors.deepPurpleAccent[100],
        ),
        Container(
          height: 100,
          width: 100,
          color: Colors.deepPurpleAccent[200],
        ),
        Container(
          height: 200,
          width: 100,
          color: Colors.deepPurpleAccent[400],
        ),
      ],
    );
  }
}
