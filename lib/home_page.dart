import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _controller = ScrollController();

  final List<String> _items = ['Uno', 'Dos', 'Tres'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: false, // determina si el appbar desaparece al hacer scroll
            snap: false,
            floating: false,
            expandedHeight: 160.0,
            centerTitle: true,
            actions: const <Widget>[],
            title: const Text('Titulo'),
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
            elevation: 4,
            backgroundColor: Colors.blue,
          ),
          SliverList(
            //Body de la pagina, es un listview
            delegate: SliverChildListDelegate([
              const Center(child: Text('data')),
              const Center(child: Text('data')),
              Container(
                height: 1000,
                color: Colors.purple,
              )
            ]),
          ),
        ],
      ),
    );
  }
}
