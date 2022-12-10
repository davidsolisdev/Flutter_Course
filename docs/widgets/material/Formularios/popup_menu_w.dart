import 'package:flutter/material.dart';

class PopupMenuW extends StatefulWidget {
  const PopupMenuW({Key? key}) : super(key: key);

  @override
  State<PopupMenuW> createState() => _PopupMenuWState();
}

class _PopupMenuWState extends State<PopupMenuW> {
  String _selectedVal = '';
  List<String> menuItems = ['', ''];

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      itemBuilder: (BuildContext context) => _popUpMenuItems(), // Listado
      initialValue: _selectedVal,
      tooltip: '',
      onSelected: (String newValue) {
        //accion al seleccionar un item
        _selectedVal = newValue; //setear la nueva opción
        ScaffoldMessenger.of(context).showSnackBar(
          //mostramos un snackBar
          const SnackBar(
            //con la opción seleccionada
            content: Text(''),
          ),
        );
      },
    );
  }

  List<PopupMenuItem<String>> _popUpMenuItems() {
    return menuItems
        .map(
          (String value) => PopupMenuItem<String>(
            value: value,
            child: Text(value),
          ),
        )
        .toList();
  }
}
