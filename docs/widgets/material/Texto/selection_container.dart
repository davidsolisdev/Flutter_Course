import 'package:flutter/material.dart';

class SelectionContainerW extends StatelessWidget {
  const SelectionContainerW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // * desabilitar la seleccion dentro de un SelectionArea
    return const SelectionContainer.disabled(
      child: Text('Hola que tal'),
    );
  }
}
