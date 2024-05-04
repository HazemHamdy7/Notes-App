
import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
              // contentPadding: EdgeInsetsGeometry.infinity,
              title: const Text('Flutter Tips',
                  style: TextStyle(color: Colors.black, fontSize: 26)),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text('Build your career with Hazem hamdy',
                    style: TextStyle(
                        color: Colors.grey.withOpacity(0.5), fontSize: 18)),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    //! Add FontAwosem
                    Icons.delete,
                    size: 24,
                    color: Colors.black,
                  ))),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              'May 7,2024',
              style:
                  TextStyle(color: Colors.grey.withOpacity(0.4), fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
