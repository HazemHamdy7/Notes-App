import 'package:flutter/material.dart';

import 'views/notes_view.dart';

void main() {
  runApp(NoteApp());
}

class NoteApp extends StatelessWidget {
  NoteApp({super.key});
  double radius = 112;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark, fontFamily: ''),
      home: const NotesView(),
    );
  }
}
 