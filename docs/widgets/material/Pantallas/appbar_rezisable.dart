import 'package:flutter/material.dart';

class AppbarRezisable extends StatelessWidget {
  const AppbarRezisable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const bool pinned = true;
    bool snap = false;
    bool floating = false;

    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: pinned, // determina si el appbar desaparece al hacer scroll
          snap: snap,
          floating: floating,
          expandedHeight: 160.0,
          elevation: 4,
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text('Titulo'),
          actions: const <Widget>[],
          flexibleSpace: FlexibleSpaceBar(
            title: const Text("Título de la página"),
            centerTitle: true,
            titlePadding:
                const EdgeInsetsDirectional.only(start: 72, bottom: 16),
            background: Image.network(
              'https://i.blogs.es/594843/chrome/450_1000.jpg',
              fit: BoxFit.fill,
            ),
          ),
        ),
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
