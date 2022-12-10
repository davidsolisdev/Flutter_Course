import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomScrollViewW extends StatelessWidget {
  CustomScrollViewW({super.key});

  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: _controller,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal, // dirección del scroll
      reverse: false, // invertir la direccion para hacer Scroll,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior
          .onDrag, // Desactivar el teclado al hacer scroll
      scrollBehavior:
          const MaterialScrollBehavior(), //CupertinoScrollBehavior()
      slivers: <Widget>[
        const SliverAppBar(title: Text('Titulo')),
        SliverList(
          //Body de la pagina, es un listview
          delegate: SliverChildListDelegate([
            const Center(child: Text('data')),
            const Center(child: Text('data')),
          ]),
        ),
      ],
    );
  }
}
