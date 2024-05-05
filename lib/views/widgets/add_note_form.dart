import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_button.dart';

import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

// ! this use to check the form the user input field is valid or not
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, subTilte;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextField(
            hintText: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 20),
          CustomTextField(
              onSaved: (value) {
                subTilte = value;
              },
              hintText: 'Content',
              maxLines: 5),
          const SizedBox(height: 60),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
