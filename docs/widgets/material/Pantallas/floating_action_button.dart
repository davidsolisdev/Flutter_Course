import 'package:flutter/material.dart';

class Floatingactionbutton extends StatelessWidget {
  const Floatingactionbutton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.black, // color del botón
      splashColor: Colors.blue, // color de splash al ser presionado
      mini: false, // hacer el botón más pequeño
      elevation: 6.0,
      tooltip: 'foto', // mensaje de ayuda al hacer Long Press
      onPressed: () {}, //Lo que se ejecuta al presionar
      child:
          const Icon(Icons.add_a_photo), //recibe un hijo, en este caso un icono
    );
  }
}
