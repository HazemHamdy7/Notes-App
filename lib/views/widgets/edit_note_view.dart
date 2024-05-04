import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_appbar.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class EidtNoteView extends StatelessWidget {
  const EidtNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 30),
            CustomAppBar(text: 'Edit Note', icon: Icons.check_sharp),
            SizedBox(height: 30),
            CustomTextField(hintText: 'Title'),
            SizedBox(height: 30),
            CustomTextField(hintText: 'Content', maxLines: 5),
          ],
        ),
      ),
    );
  }
}
