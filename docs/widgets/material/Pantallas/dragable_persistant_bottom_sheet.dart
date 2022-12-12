import 'package:flutter/material.dart';

class DragablePersistantBottomSheet extends StatelessWidget {
  const DragablePersistantBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(child: Container(color: Colors.red)),
        _buildDraggableScrollableSheet(),
      ],
    );
  }

  DraggableScrollableSheet _buildDraggableScrollableSheet() {
    return DraggableScrollableSheet(
      initialChildSize: 0.2, // tamaño inicial (fracción)
      minChildSize: 0.2, // tamaño mínimo (fracción)
      maxChildSize: 1, // tamaño máximo (fraccion)
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: _decoration,
          child: Scrollbar(
            child: ListView.builder(
              controller: scrollController,
              itemCount: 25,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: const Icon(Icons.ac_unit),
                  title: Text('Item $index'),
                );
              },
            ),
          ),
        );
      },
    );
  }

  final BoxDecoration _decoration = const BoxDecoration(
    color: Colors.blue,
    // border: Border.all(color: Colors.blue, width: 2),
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(8),
      topRight: Radius.circular(8),
    ),
  );
}
