import 'package:flutter/material.dart';

class Fadeinimage extends StatelessWidget {
  const Fadeinimage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FadeInImage(
      image: NetworkImage('https://fondosmil.com/fondo/11768.jpg'),
      placeholder: AssetImage('assets/logo.gif'), // mientras se carga la imagen
      alignment: Alignment.bottomCenter, //alineación
      fadeInDuration: Duration(milliseconds: 500), //duración de la transición
      fit: BoxFit.cover, // resize de la imagen en el contenedor
      height: 500.0,
      width: 500.0,
    );
  }
}
