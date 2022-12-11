import 'package:flutter/material.dart';

class DropdownW extends StatefulWidget {
  const DropdownW({Key? key}) : super(key: key);

  @override
  State<DropdownW> createState() => _DropdownWState();
}

class _DropdownWState extends State<DropdownW> {
  String? _opcionSeleccionada;
  List<String> poderes = ['volar', 'rayos laser'];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: _opcionSeleccionada ?? poderes[0],
      items: getOpcionesDropdown(),
      alignment: Alignment.center, // alineacion del item selecionado
      underline: Container(height: 2, color: Colors.blue),
      dropdownColor: Colors.amber, // color de fondo lista items
      elevation: 8,
      isExpanded: false,
      hint: const Text('Elige una opción'), // placeholder
      //icon: const Icon(Icons.ac_unit), // icono de despliegue
      //style: const TextStyle(), // estilos de los textos
      onChanged: (String? opt) {
        _opcionSeleccionada = opt!;
        setState(() {});
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
