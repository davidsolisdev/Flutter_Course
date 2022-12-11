import 'package:flutter/material.dart';

class WrapW extends StatelessWidget {
  const WrapW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0, // espacio horizontal
      runSpacing: 4.0, // espacio vertical
      children: <Widget>[
        Chip(
          avatar: CircleAvatar(
              backgroundColor: Colors.blue.shade900, child: const Text('AH')),
          label: const Text('Hamilton'),
        ),
        Chip(
          avatar: CircleAvatar(
              backgroundColor: Colors.blue.shade900, child: const Text('ML')),
          label: const Text('Lafayette'),
        ),
      ],
    );
  }
}
