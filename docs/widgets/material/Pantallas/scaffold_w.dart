import 'package:flutter/material.dart';

class ScaffoldW extends StatelessWidget {
  const ScaffoldW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // es la barra de título de la app que recibe params
        title: const Text('Home'), // el AppBar recibe un título y mas
      ),
      resizeToAvoidBottomInset:
          false, //evitar que los widgets se muevan cuando aparece el teclado
      body: const Center(
        // el cuerpo de la app, recibe un widget
        child: Text('homeeee'),
      ),
      drawer: Drawer(
        elevation: 16.0,
        child: Column(children: const <Widget>[]),
      ),
      bottomNavigationBar: BottomAppBar(
        //bottonTabNavigator
        child: Row(
          children: const <Widget>[],
        ),
      ),
      floatingActionButton: // Botón flotante, podemos expandir, etc.
          FloatingActionButton(child: const Icon(Icons.add), onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
