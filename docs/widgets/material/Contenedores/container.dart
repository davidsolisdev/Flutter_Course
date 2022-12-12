import 'package:flutter/material.dart';

class ContainerW extends StatelessWidget {
  const ContainerW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size sizeScreen = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment.bottomCenter, // alineación del hijo
      color: Colors.blue, // BG color
      decoration: _decoration, // estilos
      margin: const EdgeInsets.all(1.0),
      padding: const EdgeInsets.all(1.0),
      height: 200.0,
      width: sizeScreen.width,
      //transform: Matrix4.rotationZ(-0.1),
      // si no se le pasa alineación, toma el tamaño del hijo
      child: const Text('Componente hijo'),
    );
  }

  final BoxDecoration _decoration = const BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(1.0)),
    color: Colors.blue,
    image: DecorationImage(image: AssetImage('')),
    boxShadow: [
      BoxShadow(
          color: Colors.black, blurRadius: 0.0, blurStyle: BlurStyle.normal)
    ],
    border: Border(
      top: BorderSide(),
      bottom: BorderSide(),
      left: BorderSide(),
      right: BorderSide(),
    ),
  );
}
