import 'package:flutter/material.dart';

class ContenedordeFraccion extends StatelessWidget {
  const ContenedordeFraccion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FractionallySizedBox(
      heightFactor: 0.2,
      widthFactor: 0.3,
      alignment: Alignment.centerLeft,
      child: Text("hola"),
    );
  }
}
