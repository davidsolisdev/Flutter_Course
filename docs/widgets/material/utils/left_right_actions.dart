import 'package:flutter/material.dart';

class LeftRightActions extends StatelessWidget {
  LeftRightActions({Key? key}) : super(key: key);

  final List<String> _items = ['Uno', 'Dos', 'Tres'];

  Future<bool> _confirmDismiss(DismissDirection dir) async {
    if (dir == DismissDirection.startToEnd) {
      // instrucciones específicas swipe derecha - izquierda
      return false;
    } else {
      // instrucciones específicas swipe izquierda - derecha
      return false;
    }
  }

  void _eventDismiss(DismissDirection dir) {
    if (dir == DismissDirection.startToEnd) {
      // instrucciones específicas swipe derecha - izquierda
    } else {
      // instrucciones específicas swipe izquierda - derecha
    }
  }

  final Widget _izquierdaAderecha = Container(
    color: Colors.red,
    alignment: Alignment.centerLeft,
    child: const Icon(Icons.delete),
  );

  final Widget _derechaAizquierda = Container(
    color: Colors.green,
    alignment: Alignment.centerRight,
    child: const Icon(Icons.thumb_up),
  );

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _items.length,
      itemBuilder: (context, index) {
        return Dismissible(
          key: Key(_items[index]),
          // * evento deslizar true desaparece, false se queda
          confirmDismiss: _confirmDismiss,
          // * evento al realizar el dismiss
          onDismissed: _eventDismiss,
          // direcciones en las que se permite deslizar
          direction: DismissDirection.horizontal, // DismissDirection.startToEnd
          resizeDuration: const Duration(milliseconds: 300),
          movementDuration: const Duration(milliseconds: 200),
          // Lo que se muestra al hacer swipe izquierda - derecha
          background: _izquierdaAderecha,
          // Lo que se muestra al hacer swipe derecha - izquierda
          secondaryBackground: _derechaAizquierda,
          // * Item a mostrar
          child: ListTile(
            title: Center(child: Text(_items[index])),
          ),
        );
      },
    );
  }
}
