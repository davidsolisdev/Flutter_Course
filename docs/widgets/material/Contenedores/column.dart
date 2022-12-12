import 'package:flutter/material.dart';

class ColumnW extends StatelessWidget {
  const ColumnW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween, // alineacion vertical
      crossAxisAlignment: CrossAxisAlignment.center, //align items horizontal
      verticalDirection: VerticalDirection.down, // hacia dónde term list
      //textDirection: TextDirection.ltr,
      children: const <Widget>[
        Text('hola'),
        Divider(),
        Text('qué tal'),
        Divider()
      ], // Widgets hijos
    );
  }
}
