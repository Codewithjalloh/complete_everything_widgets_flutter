import 'package:complete_everything_widgets_flutter/model/note_database.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/note.dart';

class NotePage extends StatefulWidget {
  const NotePage({super.key});

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  // text controller
  final textController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // on startup fetch existing notes
    readNotes();
  }

  // CREATE NOTES
  void createNotes() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: TextField(
          controller: textController,
        ),
        actions: [
          // create button
          MaterialButton(
            onPressed: () {
              // add to database
              context.read<NoteDatabase>().addNote(textController.text);

              // clear controller
              textController.clear();

              // pop dialog box
              Navigator.pop(context);
            },
            child: const Text("Create"),
          )
        ],
      ),
    );
  }

  void readNotes() {
    context.read<NoteDatabase>().fetchNote();
  }

  void updateNotes(Note note) {
    textController.text = note.text;

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Update Note"),
        content: TextField(
          controller: textController,
        ),
        actions: [
          // create button
          MaterialButton(
            onPressed: () {
              // add to database
              context.read<NoteDatabase>().updateNote(
                    note.id,
                    textController.text,
                  );

              // clear controller
              textController.clear();

              // pop dialog box
              Navigator.pop(context);
            },
            child: const Text("Update"),
          )
        ],
      ),
    );
  }

  void deleteNotes(int id) {
    context.read<NoteDatabase>().deleteNote(id);
  }

  @override
  Widget build(BuildContext context) {
    // note database
    final noteDatabase = context.watch<NoteDatabase>();

    // current notes
    List<Note> currentNotes = noteDatabase.currentNotes;

    return Scaffold(
      appBar: AppBar(
        title: Text("Notes"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNotes,
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
          itemCount: currentNotes.length,
          itemBuilder: (context, index) {
            final note = currentNotes[index];

            // list tile UI
            return ListTile(
              title: Text(note.text),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () => updateNotes(note),
                    icon: Icon(Icons.edit),
                  ),
                  IconButton(
                    onPressed: () => deleteNotes(note.id),
                    icon: Icon(Icons.delete),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
