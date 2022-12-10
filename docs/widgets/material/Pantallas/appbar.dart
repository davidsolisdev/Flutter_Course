import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue, // color de fondo
      leading: IconButton(
          // widget al inicio
          icon: const Icon(Icons.tag_faces),
          tooltip: 'ver bus',
          onPressed: () {}),
      title: const Center(child: Text("Título página")), // título en el centro
      actions: <Widget>[
        // widgets al final del appbar
        IconButton(icon: const Icon(Icons.directions_bike), onPressed: () {}),
        IconButton(
            icon: const Icon(Icons.directions_bus),
            tooltip: 'ver bus',
            onPressed: () {}),
        PopupMenuButton(
          itemBuilder: (BuildContext context) {
            return const <PopupMenuItem>[
              PopupMenuItem(
                value: 'Boat',
                child: Text('Boat'),
              ),
              PopupMenuItem(
                value: 'Train',
                child: Text('Train'),
              )
            ];
          },
        )
      ],
    );
  }
}
