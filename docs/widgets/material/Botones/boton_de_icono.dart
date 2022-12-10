import 'package:flutter/material.dart';

class BotonDeIcono extends StatelessWidget {
  const BotonDeIcono({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.add), // icono
      color: Colors.black, // color del icono
      iconSize: 20.0, //tamaño del icono
      alignment: Alignment.bottomCenter, //alineación del icono
      splashColor: Colors.blue, // color del feedback al presionar
      splashRadius: 20.0, // tamaño del splash
      tooltip: 'texto de ayuda al Long Press',
      onPressed: () {}, //función al presionar
    );
  }
}
