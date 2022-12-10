import 'package:flutter/material.dart';

class SingleChildScrollViewW extends StatelessWidget {
  SingleChildScrollViewW({Key? key}) : super(key: key);

  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(), // ClampingScrollPhysics()
      controller: _controller,
      padding: const EdgeInsets.all(1.0),
      scrollDirection: Axis.horizontal, // dirección del scroll
      reverse: false, // invertir la direccion para hacer Scroll,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior
          .onDrag, // Desactivar el teclado al hacer scroll
      child: Container(),
    );
  }
}
