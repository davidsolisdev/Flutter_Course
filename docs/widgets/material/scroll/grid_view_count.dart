import 'package:flutter/material.dart';

class GridViewCountW extends StatelessWidget {
  GridViewCountW({Key? key}) : super(key: key);

  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const BouncingScrollPhysics(),
      controller: _controller,
      crossAxisCount: 2, // columnas del grid
      scrollDirection: Axis.vertical,
      mainAxisSpacing: 10.0, // espacio horizontal entre items
      crossAxisSpacing: 10.0, // espacio vertical entre items
      padding: const EdgeInsets.all(0),
      reverse: false, // invertir la direccion del Scroll
      keyboardDismissBehavior:
          ScrollViewKeyboardDismissBehavior.onDrag, // manual
      shrinkWrap:
          false, // si es true, toma todo el espacio de la pantalla aunque la lista no ocupe todo
      childAspectRatio:
          1, // altura de los items, mientras mayor = menor el alto
      children: [
        Image.network('https://picsum.photos/250?image=1'),
        Image.network('https://picsum.photos/250?image=2'),
        Image.network('https://picsum.photos/250?image=3'),
      ],
    );
  }
}
