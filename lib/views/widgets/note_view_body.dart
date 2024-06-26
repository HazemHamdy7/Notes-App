import 'package:flutter/material.dart';
import 'custom_appbar.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(children: [
          SizedBox(height: 30),
          CustomAppBar(text: 'Notes', icon: Icons.search),
          Expanded(child: NotesListView())
        ]));
  }
}
