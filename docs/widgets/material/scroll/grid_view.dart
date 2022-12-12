import 'package:flutter/material.dart';

class GridViewW extends StatelessWidget {
  GridViewW({Key? key}) : super(key: key);

  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: const BouncingScrollPhysics(),
      controller: _controller,
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.all(0),
      reverse: false, // invertir la direccion del Scroll
      keyboardDismissBehavior:
          ScrollViewKeyboardDismissBehavior.onDrag, // manual
      shrinkWrap:
          false, // si es true, toma todo el espacio de la pantalla aunque la lista no ocupe todo
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // numero de columnas
        crossAxisSpacing: 10, // espacio vertical entre items
        mainAxisSpacing: 10, // espacio horizontal entre items
        childAspectRatio:
            1, // altura de los items, mientras mayor = menor el alto
      ),
      children: [
        Image.network('https://picsum.photos/250?image=1'),
        Image.network('https://picsum.photos/250?image=2'),
        Image.network('https://picsum.photos/250?image=3'),
      ],
    );
  }
}
