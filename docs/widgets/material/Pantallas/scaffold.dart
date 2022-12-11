import 'package:flutter/material.dart';

class ScaffoldW extends StatelessWidget {
  const ScaffoldW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      resizeToAvoidBottomInset:
          false, //evitar que los widgets se muevan cuando aparece el teclado
      //backgroundColor: Colors.grey,
      body: const Text('homeeee'),
      drawerEnableOpenDragGesture: true, // habilitar el gesto de apertura
      endDrawerEnableOpenDragGesture: true, // habilitar el gesto de cierre
      drawer: Drawer(child: Column(children: const <Widget>[])),
      onEndDrawerChanged: (isOpened) {},
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0, color: Colors.blue[900]),
      ),
      //persistentFooterButtons: const [], // parecido al bottomNavigationBar
      //persistentFooterAlignment: AlignmentDirectional.center,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:
          FloatingActionButton(child: const Icon(Icons.add), onPressed: () {}),
    );
  }
}
