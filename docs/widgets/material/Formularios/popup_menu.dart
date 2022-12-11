import 'package:flutter/material.dart';

class PopupMenuW extends StatefulWidget {
  const PopupMenuW({Key? key}) : super(key: key);

  @override
  State<PopupMenuW> createState() => _PopupMenuWState();
}

class _PopupMenuWState extends State<PopupMenuW> {
  String? _selectedVal;
  List<String> menuItems = ['', ''];

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      itemBuilder: (context) => _popUpMenuItems(),
      initialValue: _selectedVal,
      tooltip: '',
      enabled: true,
      elevation: 8,
      color: Colors.amber, // color de fondo lista items
      //splashRadius: 20,
      padding: const EdgeInsets.all(8.0),
      iconSize: 24.0,
      //icon: const Icon(Icons.ac_unit),
      //child: Container(), // reemplaza el icono
      onCanceled: () {},
      onSelected: (String newValue) {
        _selectedVal = newValue; //setear la nueva opción
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(newValue)),
        );
      },
    );
  }

  List<PopupMenuItem<String>> _popUpMenuItems() => menuItems
      .map((String value) =>
          PopupMenuItem<String>(value: value, child: Text(value)))
      .toList();
}
