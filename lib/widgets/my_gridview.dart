import 'package:flutter/material.dart';

class MyGridview extends StatelessWidget {
  const MyGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      // scrollDirection: Axis.vertical,
      scrollDirection: Axis.horizontal,

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
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
    );
  }
}
