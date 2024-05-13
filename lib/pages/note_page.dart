import 'package:flutter/material.dart';

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
  void createNotes() {}

  void readNotes() {}

  void updateNotes() {}
  void deleteNotes() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
