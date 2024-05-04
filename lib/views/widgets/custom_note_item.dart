import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30, bottom: 50, left: 16),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
              title: const Text('Flutter Tips',
                  style: TextStyle(color: Colors.black, fontSize: 24)),
              subtitle: Text('Build your career with Hazem hamdy',
                  style: TextStyle(
                      color: Colors.grey.withOpacity(1), fontSize: 16)),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    size: 24,
                    color: Colors.black,
                  ))),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              'May 7,2024',
              style: TextStyle(color: Colors.grey.withOpacity(1), fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
