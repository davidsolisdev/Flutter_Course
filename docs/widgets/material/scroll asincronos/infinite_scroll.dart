import 'package:flutter/material.dart';

import 'package:flutter_course/models/user.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  // * lista de items
  List<User> lista = <User>[];

  // * controlador de scroll
  final ScrollController _controller = ScrollController();

  void scrollListener() {
    if (_controller.position.pixels + 100 >=
        _controller.position.maxScrollExtent) {
      // * carga asincrona y llenado de lista de Users
    }
  }

  @override
  void initState() {
    super.initState();

    _controller.addListener(scrollListener);
  }

  @override
  void dispose() {
    super.dispose();

    _controller.removeListener(scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _controller, // controlador
      itemCount: lista.length, // total de items
      scrollDirection: Axis.vertical, // direccion del scroll
      reverse: false, // invertir la direccion del scroll
      padding: const EdgeInsets.all(1.0),
      itemBuilder: (context, index) {
        return Column(
          children: const <Widget>[],
        );
      },
    );
  }
}
