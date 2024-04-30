import 'package:flutter/material.dart';

import 'widgets/appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // App bar title
          title: Text("Complete Widgets"),
          // App bar background colour
          backgroundColor: Colors.grey,
          // controls the size of the shadow below the app bar
          elevation: 50,
        ),
      ),
    );
  }
}
