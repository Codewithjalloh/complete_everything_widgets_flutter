import 'package:complete_everything_widgets_flutter/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
          child: MyButton(
            color: Theme.of(context).colorScheme.secondary,
            onTap: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            },
          ),
        ),
      ),
    );
  }
}
