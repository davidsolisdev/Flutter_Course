import 'package:flutter/material.dart';

class InteractivChild extends StatelessWidget {
  const InteractivChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      boundaryMargin: const EdgeInsets.all(20.0),
      scaleEnabled: true,
      maxScale: 2.5,
      minScale: 0.1,
      onInteractionStart: (ScaleStartDetails details) {
        /* funcion que se ejecuta al inicio de la interaccion */
      },
      onInteractionEnd: (ScaleEndDetails details) {
        // funcion que se ejecuta al final de la interaccion
        print('Termino la interaccion: ${details.velocity}');
      },
      child: const Text(''),
    );
  }
}
