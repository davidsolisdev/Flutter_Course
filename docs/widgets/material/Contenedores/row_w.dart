import 'package:flutter/material.dart';

class RowW extends StatelessWidget {
  const RowW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center, //align items horizontal
      mainAxisAlignment: MainAxisAlignment.center, // align items vertical
      children: const <Widget>[
        Text('hola'),
        Text('qué tal'),
      ], // Widgets hijos
    );
  }
}
