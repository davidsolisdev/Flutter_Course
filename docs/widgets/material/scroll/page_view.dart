import 'package:flutter/material.dart';

class PageViewW extends StatelessWidget {
  PageViewW({super.key});

  final PageController _controller = PageController(
    viewportFraction: 1, // paginas visibles 0 a 1
    initialPage: 0,
  );

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const BouncingScrollPhysics(), // ClampingScrollPhysics()
      controller: _controller, // controlador
      pageSnapping: true, // comportamiento por defecto al scroll page por page
      scrollDirection: Axis.vertical, // direccion del scroll
      reverse: false, // invertir la direccion del Scroll
      onPageChanged: (int page) {},
      children: const <Widget>[],
    );
  }
}
