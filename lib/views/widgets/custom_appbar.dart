// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
        const Spacer(),
        CustomSearchIcon(icon: icon),
      ],
    );
  }
}
