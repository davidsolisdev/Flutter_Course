import 'package:flutter/material.dart';

class FloatingactionbuttonExtend extends StatefulWidget {
  const FloatingactionbuttonExtend({Key? key}) : super(key: key);

  @override
  State<FloatingactionbuttonExtend> createState() =>
      _FloatingactionbuttonExtendState();
}

class _FloatingactionbuttonExtendState
    extends State<FloatingactionbuttonExtend> {
  bool _isExtended = true;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      icon: const Icon(Icons.account_tree), //recibe un icono
      label: const Text('hola'), //recibe un widget en este caso un texto
      tooltip: 'foto', // mensaje de ayuda al hacer Long Press
      backgroundColor: Colors.black, // color del botón
      splashColor: Colors.blue, // color de splash al ser presionado
      isExtended: _isExtended, // determinar si está extendido ahora
      onPressed: () {
        setState(() {
          _isExtended = !_isExtended;
        });
      }, //Lo que se ejecuta al presionar
    );
  }
}
