import 'package:flutter/material.dart';

class Fadeinimage extends StatelessWidget {
  const Fadeinimage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInImage(
      image: const NetworkImage('https://fondosmil.com/fondo/11768.jpg'),
      placeholder:
          const AssetImage('assets/logo.gif'), // mientras se carga la imagen
      alignment: Alignment.bottomCenter, //alineación
      repeat: ImageRepeat.noRepeat,
      fadeInDuration: const Duration(milliseconds: 700), // trasicion entrada
      fadeOutDuration: const Duration(milliseconds: 300), // trasicion salida
      //fadeInCurve: ,
      //fadeOutCurve: ,
      fit: BoxFit.cover, // resize de la imagen en el contenedor
      placeholderFit: BoxFit.cover,
      height: 500.0,
      width: 500.0,
      imageErrorBuilder: (context, error, stackTrace) {
        return Container();
      },
      placeholderErrorBuilder: (context, error, stackTrace) {
        return Container();
      },
    );
  }
}
