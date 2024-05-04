// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    this.onSaved,
  });
  final void Function(String?)? onSaved;
  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (
            // value == null || value.isEmpty
            value?.isEmpty ?? true) {
          return 'Please enter some text';
        } else {
          return null;
        }
      },
      onSaved: onSaved,
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,

        // hintStyle: const TextStyle(color: kPrimaryColor),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
