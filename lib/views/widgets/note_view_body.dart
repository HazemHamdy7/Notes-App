import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'custom_appbar.dart';
import 'notes_list_view.dart';

class NotesViewBidy extends StatelessWidget {
  const NotesViewBidy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 20),
          CustomAppBar(),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
