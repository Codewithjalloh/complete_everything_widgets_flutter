import 'package:complete_everything_widgets_flutter/pages/counter_page.dart';
import 'package:complete_everything_widgets_flutter/pages/home_page_theme.dart';
import 'package:complete_everything_widgets_flutter/pages/profile_page.dart';
import 'package:complete_everything_widgets_flutter/pages/todo_page.dart';
import 'package:complete_everything_widgets_flutter/widgets/my_column.dart';
import 'package:complete_everything_widgets_flutter/widgets/my_gridview.dart';
import 'package:complete_everything_widgets_flutter/widgets/my_row.dart';
import 'package:complete_everything_widgets_flutter/widgets/my_stack.dart';
import 'package:complete_everything_widgets_flutter/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/first_page.dart';
import 'pages/home_page.dart';
import 'pages/second_page.dart';
import 'pages/settings_page.dart';
import 'themes/theme_provider.dart';
import 'widgets/my_container.dart';
import 'widgets/my_gesture_detector.dart';
import 'widgets/my_gridview_builder.dart';
import 'widgets/my_listview_builder.dart';

// Everything must be run inside this main functions
void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

// a constant stateless widget that never change every its build.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomePageTheme(),
        // the counter page is all about stateful widget
        // CounterPage(),

        // all these widget are for basic understanding of most used flutter widgets
        //MyGridviewBuilder(),
        //MyGridview(),
        // MyStack(),
        // MyRow(),
        //MyColumn()
        //Center(child: MyText()),
        // MyContainer()
        // MyGestureDetector(),
      ),
      routes: {
        '/firstpage': (context) => FirstPage(),
        '/secondpage': (context) => SecondPage(),
        '/homepage': (context) => HomePage(),
        '/profilepage': (context) => ProfilePage(),
        '/settingspage': (context) => SettingsPage(),
      },
    );
  }
}
