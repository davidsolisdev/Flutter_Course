import 'package:flutter/material.dart';

class BotonConIcono extends StatelessWidget {
  const BotonConIcono({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: const Icon(Icons.web),
      label: const Text('hola'),
      onPressed: () {},
      onLongPress: () {},
      autofocus: false,
      //  LAS DEMÁS PROPIEDADES DE ELEVATEDBUTTON
    );
  }
}
