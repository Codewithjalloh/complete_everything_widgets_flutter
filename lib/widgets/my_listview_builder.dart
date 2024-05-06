import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    List names = ["Jalloh", "Jallow", "Jallon", "Sulayman"];
    List subtitles = [
      "futa is in guinea",
      "pita is in guinea",
      "labe is in guinea",
      'conakry is guinea'
    ];

    return ListView.builder(
        // scrollDirection: Axis.vertical,
        itemCount: names.length,
        itemBuilder: (context, index) => ListTile(
              // selectedColor: Colors.green,
              // splashColor: Colors.deepPurple,
              // tileColor: Colors.amber,
              // mouseCursor: MouseCursor.defer,
              horizontalTitleGap: 20,
              minLeadingWidth: 30,

              leading: Icon(
                Icons.add,
                color: Colors.red,
              ),
              title: Text(names[index]),
              subtitle: Text(subtitles[index]),
              trailing: Icon(Icons.abc),
            ));
  }
}
