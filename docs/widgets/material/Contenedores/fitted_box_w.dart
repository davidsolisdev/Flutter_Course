import 'package:flutter/material.dart';

class FittedBoxW extends StatelessWidget {
  const FittedBoxW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FittedBox(
      fit: BoxFit.cover, // forma en la que contendrá el hijo
      alignment: Alignment.center, // alineación del hijo
      child: Text('contenido'), // widget hijo
    );
  }
}
