import 'package:flutter/material.dart';

import '../../../models/tarea_view.dart';

class PageViewBuilder extends StatelessWidget {
  PageViewBuilder({super.key});

  final PageController _controller = PageController();

  List<TareaView> _lista = [];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _controller,
      pageSnapping: true, // comportamiento por defecto al scroll page por page
      scrollDirection: Axis.horizontal, // direccion del scroll
      reverse: false, // revertir la direccion en la que se hace scroll
      onPageChanged: (int page) {},
      itemCount: _lista.length,
      itemBuilder: (context, i) {
        return Text(_lista[i].descripcionDeTarea);
      },
    );
  }
}
