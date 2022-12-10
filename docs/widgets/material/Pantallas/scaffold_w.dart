import 'package:flutter/material.dart';

class ScaffoldW extends StatelessWidget {
  const ScaffoldW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      resizeToAvoidBottomInset:
          false, //evitar que los widgets se muevan cuando aparece el teclado
      body: const Center(child: Text('homeeee')),
      drawer: Drawer(
        elevation: 16.0,
        child: Column(children: const <Widget>[]),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: const <Widget>[],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(child: const Icon(Icons.add), onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
