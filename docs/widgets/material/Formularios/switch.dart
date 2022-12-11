import 'package:flutter/material.dart';

class SwitchW extends StatefulWidget {
  const SwitchW({Key? key}) : super(key: key);

  @override
  State<SwitchW> createState() => _SwitchWState();
}

class _SwitchWState extends State<SwitchW> {
  bool _switchVal = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _switchVal,
      // * colores cuando esta seleccionado
      //activeThumbImage: const AssetImage(''),
      activeTrackColor: Colors.amber,
      activeColor: Colors.black, // color del indicador cuando select
      // * colores cuando NO esta seleccionado
      //inactiveThumbImage: const AssetImage(''),
      inactiveThumbColor: Colors.blue,
      inactiveTrackColor: Colors.black,
      //splashRadius: 20,
      onChanged: (bool value) {
        _switchVal = value;
        setState(() {});
      },
    );
  }
}
