import 'package:flutter/material.dart';

class PullToRefresh extends StatelessWidget {
  PullToRefresh({super.key});

  final List<int> _listaNumeros = <int>[1, 2];

  Future<void> getOnePage() async {}

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: getOnePage, //Debe ser un future que retorna null
      backgroundColor: Colors.black,
      color: Colors.blue,
      child: ListView.builder(
        itemCount: _listaNumeros.length,
        itemBuilder: (BuildContext context, int index) {
          return const FadeInImage(
            image: NetworkImage('https://picsum.photos/500/300/?image'),
            placeholder: AssetImage('assets/jar-loading.gif'),
          );
        },
      ),
    );
  }
}
