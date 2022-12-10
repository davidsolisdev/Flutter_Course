import 'package:flutter/material.dart';

class AlignChild extends StatelessWidget {
  const AlignChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.center,
      heightFactor: 200,
      widthFactor: 200,
      child: Text('Child Alineado'),
    );
  }
}
