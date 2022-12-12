import 'package:flutter/material.dart';

class ListViewW extends StatelessWidget {
  ListViewW({super.key});

  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(), // ClampingScrollPhysics()
      controller: _controller,
      padding: const EdgeInsets.all(1.0),
      scrollDirection: Axis.horizontal, // dirección del scroll
      reverse: false, // invertir la direccion para hacer Scroll,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior
          .onDrag, // Desactivar el teclado al hacer scroll
      shrinkWrap:
          false, // si es true, toma todo el espacio de la pantalla aunque la lista no ocupe todo
      children: const <Widget>[],
    );
  }
}
