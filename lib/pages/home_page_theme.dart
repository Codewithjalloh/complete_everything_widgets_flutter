import 'package:flutter/material.dart';

import '../components/my_box.dart';

class HomePageTheme extends StatelessWidget {
  const HomePageTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: MyBox(
          color: Theme.of(context).colorScheme.primary,
          child: ,
        ),
      ),
    );
  }
}
