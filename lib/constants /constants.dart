import 'package:flutter/material.dart';

var appbar = AppBar(
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
    ]);
