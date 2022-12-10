import 'package:flutter/material.dart';

class DropdownW extends StatefulWidget {
  const DropdownW({Key? key}) : super(key: key);

  @override
  State<DropdownW> createState() => _DropdownWState();
}

class _DropdownWState extends State<DropdownW> {
  String _opcionSeleccionada = '';
  List<String> poderes = ['volar', 'rayos laser'];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _opcionSeleccionada,
      items: getOpcionesDropdown(),
      hint: const Text('Elige una opción'),
      onChanged: (String? opt) {
        // al seleccionar otra opcion
        setState(() {
          _opcionSeleccionada = opt!;
        });
      },
    );
  }

  List<DropdownMenuItem<String>> getOpcionesDropdown() => poderes
      .map((poder) => DropdownMenuItem(
            value: poder,
            child: Text(poder),
          ))
      .toList();
}
