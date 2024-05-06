import 'package:complete_everything_widgets_flutter/pages/home_page.dart';
import 'package:complete_everything_widgets_flutter/pages/profile_page.dart';
import 'package:complete_everything_widgets_flutter/pages/second_page.dart';
import 'package:complete_everything_widgets_flutter/pages/settings_page.dart';
import 'package:flutter/material.dart';

// StatefulWidget => The state of the widget changes
class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // this keep track of the current page to display
  int _selectedIndex = 0;

  // this method updates the new selected index
  void _navigatorButton(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // list of pages
  final List _pages = [
    // home page
    HomePage(),

    // profile page
    ProfilePage(),

    // settings Page
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("1st Page"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to Second Page"),
          onPressed: () {
            // navigate to second page the normal way
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondPage(),
              ),
            );
          },
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        child: Column(
          children: [
            // common to place to drawer header here

            // DRAWER HEADERS
            const DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 48,
              ),
            ),

            // DRAWER TILE
            // home page list tile
            ListTile(
              leading: Icon(Icons.home),
              title: Text("H O M E"),
              onTap: () {
                // pop the drawer
                Navigator.pop(context);

                // goto home page
                Navigator.pushNamed(context, "/homepage");
              },
            ),

            // profile page tile
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.black,
              ),
              title: Text("P R O F I L E"),
              onTap: () {
                // pop the drawer
                Navigator.pop(context);

                // go to settings page
                Navigator.pushNamed(context, "/profilepage");
              },
            ),

            // settings page tile
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.green,
              ),
              title: Text("S E T T I N S"),
              onTap: () {
                // pop the drawer
                Navigator.pop(context);

                // go to settings page
                Navigator.pushNamed(context, "/settingspage");
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigatorButton,
        items: [
          // home
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Menu"),
          // profile
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          // settings
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
