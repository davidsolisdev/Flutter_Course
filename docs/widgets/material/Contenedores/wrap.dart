import 'package:flutter/material.dart';

class WrapW extends StatelessWidget {
  const WrapW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0, // espacio horizontal
      runSpacing: 4.0, // espacio vertical
      direction: Axis.horizontal,
      alignment: WrapAlignment.start, // alineacion horizantal
      runAlignment: WrapAlignment.start, // alineacion vertical
      crossAxisAlignment: WrapCrossAlignment.start,
      verticalDirection: VerticalDirection.down,
      //textDirection: TextDirection.ltr,
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
