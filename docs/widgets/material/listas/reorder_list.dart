import 'package:flutter/material.dart';

class ReorderList extends StatefulWidget {
  const ReorderList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ReorderListState();
  }
}

class _ReorderListState extends State<ReorderList> {
  bool _reverseSort = false;
  final List<String> _items = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split('').toList();
  final ScrollController _controller = ScrollController();

  // * funcion de reordenamiento
  void _reorder(int oldIndex, int newIndex) {
    setState(() {
      final newIdx = newIndex > oldIndex ? newIndex - 1 : newIndex;
      final item = _items.removeAt(oldIndex);
      _items.insert(newIdx, item);
    });
  }

  void _onSort() {
    setState(() {
      _reverseSort = !_reverseSort;
      _items.sort((a, b) => _reverseSort ? b.compareTo(a) : a.compareTo(b));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reorderable list'),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.sort_by_alpha), onPressed: _onSort),
        ],
      ),
      body: ReorderableListView(
        onReorder: _reorder,
        physics: const BouncingScrollPhysics(), // ClampingScrollPhysics()
        scrollController: _controller,
        padding: const EdgeInsets.all(1.0),
        scrollDirection: Axis.horizontal, // dirección del scroll
        reverse: false, // invertir la direccion para hacer Scroll,
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior
            .onDrag, // Desactivar el teclado al hacer scroll
        shrinkWrap:
            false, // si es true, toma todo el espacio de la pantalla aunque la lista no ocupe todo
        children: _items
            .map((item) => ListTile(key: Key(item), title: Text('item $item')))
            .toList(), // ! debe tener llave unica, NO INDEX
      ),
    );
  }
}
