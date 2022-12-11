import 'package:flutter/material.dart';

class ContainerW extends StatelessWidget {
  const ContainerW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size sizeScreen = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment.bottomCenter, // alineación del hijo
      color: Colors.blue, // BG color
      decoration: const BoxDecoration(), // estilos
      margin: const EdgeInsets.all(1.0),
      padding: const EdgeInsets.all(1.0),
      height: 200.0,
      width: sizeScreen.width,
      // si no se le pasa alineación, toma el tamaño del hijo
      child: const Text('Componente hijo'),
    );
  }
}
