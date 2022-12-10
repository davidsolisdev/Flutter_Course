import 'package:flutter/material.dart';

class SelectionAreaW extends StatelessWidget {
  const SelectionAreaW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // * permitir la seleccion del texto
    return SelectionArea(
      child: Column(
        children: const [
          Text('Hola que tal'),
        ],
      ),
    );
  }
}
