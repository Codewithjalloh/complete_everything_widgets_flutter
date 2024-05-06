import 'package:complete_everything_widgets_flutter/widgets/my_column.dart';
import 'package:complete_everything_widgets_flutter/widgets/my_gridview.dart';
import 'package:complete_everything_widgets_flutter/widgets/my_row.dart';
import 'package:complete_everything_widgets_flutter/widgets/my_stack.dart';
import 'package:complete_everything_widgets_flutter/widgets/my_text.dart';
import 'package:flutter/material.dart';

import 'widgets/my_container.dart';
import 'widgets/my_gesture_detector.dart';
import 'widgets/my_gridview_builder.dart';
import 'widgets/my_listview_builder.dart';

// Everything must be run inside this main functions
void main() {
  runApp(const MyApp());
}

// a constant stateless widget that never change every its build.
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
          // A widget to display before the toolbar's title.
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
          ),
          // A list of Widgets to display in a row after the title widget.
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.info),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
        ),
        body: ListViewBuilder(),

        //MyGridviewBuilder(),

        //MyGridview(),

        // MyStack(),

        // MyRow(),

        //MyColumn()

        //Center(child: MyText()),
        // MyContainer()
        // MyGestureDetector(),
      ),
    );
  }
}
