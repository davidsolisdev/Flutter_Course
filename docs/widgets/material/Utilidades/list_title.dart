import 'package:flutter/material.dart';

class Listtitle extends StatelessWidget {
  const Listtitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('hola'),
      subtitle: const Text('subtítulo'),
      leading: const Icon(Icons.add), // icono al inicio
      trailing: const Icon(Icons.save), // Icono al final
      tileColor: Colors.blue, // Color de fondo del widget
      onTap: () {},
      onLongPress: () {},
    );
  }
}
