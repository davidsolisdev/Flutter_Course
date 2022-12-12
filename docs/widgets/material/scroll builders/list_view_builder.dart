import 'package:flutter/material.dart';
import 'package:flutter_course/models/user.dart';

class ListViewBuilder extends StatelessWidget {
  ListViewBuilder({super.key});

  // * lista de items
  final List<User> _lista = <User>[];

  // * controlador de scroll
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(), // ClampingScrollPhysics()
      controller: _controller, // controlador
      itemCount: _lista.length, // total de items
      scrollDirection: Axis.vertical, // direccion del scroll
      reverse: false, // invertir la direccion del Scroll,
      padding: const EdgeInsets.all(1.0),
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior
          .onDrag, // Desactivar el teclado al hacer scroll
      shrinkWrap:
          false, // si es true, toma todo el espacio de la pantalla aunque la lista no ocupe todo
      itemBuilder: (context, i) {
        return Text(" ${_lista[i].nombre}");
      },
    );
  }
}
