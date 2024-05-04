import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomTextField(hintText: 'Title'),
          SizedBox(height: 20),
          CustomTextField(hintText: 'Content', maxLines: 5),
        ],
      ),
    );
  }
}
