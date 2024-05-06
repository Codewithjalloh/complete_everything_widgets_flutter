import 'package:flutter/material.dart';
// StatelessWidget => The state of the widget does not change

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME PAGE"),
      ),
      body: Center(
        child: Text("HOME PAGE"),
      ),
    );
  }
}
