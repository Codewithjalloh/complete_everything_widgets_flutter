import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  const MyColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.end,
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      // mainAxisAlignment: MainAxisAlignment.center,

      // crossAxisAlignment: CrossAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.end,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      // crossAxisAlignment: CrossAxisAlignment.baseline,

      children: [
        Container(
          height: 200,
          width: 200,
          color: Colors.deepPurpleAccent[100],
        ),
        Container(
          height: 200,
          width: 200,
          color: Colors.deepPurpleAccent[200],
        ),
        Expanded(
          flex: 2,
          child: Container(
            height: 200,
            width: 200,
            color: Colors.deepPurpleAccent[400],
          ),
        ),
      ],
    );
  }
}
