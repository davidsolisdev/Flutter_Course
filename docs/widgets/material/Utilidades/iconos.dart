import 'package:flutter/material.dart';

class Iconos extends StatelessWidget {
  const Iconos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Icons.alarm, //tipo de icono
      color: Colors.blue, //color del icono
      size: 70.0, // tamaño
      textDirection: TextDirection.ltr, // dirección del icono
      semanticLabel: 'Texto para el sistema de accesibilidad',
    );
  }
}
