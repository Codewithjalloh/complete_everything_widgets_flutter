import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: AlignmentDirectional.center,
      // alignment: AlignmentDirectional.bottomCenter,
      // alignment: AlignmentDirectional.bottomEnd,
      // alignment: AlignmentDirectional.bottomStart,
      // alignment: AlignmentDirectional.centerStart,
      // alignment: AlignmentDirectional.topCenter,
      // alignment: AlignmentDirectional.topEnd,
      // alignment: AlignmentDirectional.topStart,

      // textDirection: TextDirection.rtl,

      // fit: StackFit.loose,
      // fit: StackFit.passthrough,
      // fit: StackFit.expand,

      // clipBehavior: Clip.antiAlias,
      // clipBehavior: Clip.antiAliasWithSaveLayer,
      // clipBehavior: Clip.hardEdge,

      children: [
        // Big Box
        Container(
          child: Center(child: Text("Hello")),
          height: 300,
          width: 300,
          color: Colors.deepPurpleAccent[100],
        ),

        // Medium Box
        Container(
          height: 200,
          width: 200,
          color: Colors.deepPurpleAccent[200],
        ),

        // small Box
        Container(
          height: 100,
          width: 100,
          color: Colors.deepPurpleAccent[400],
        ),
      ],
    );
  }
}
