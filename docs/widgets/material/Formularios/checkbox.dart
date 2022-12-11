import 'package:flutter/material.dart';

class CheckboxW extends StatefulWidget {
  const CheckboxW({Key? key}) : super(key: key);

  @override
  State<CheckboxW> createState() => _CheckboxWState();
}

class _CheckboxWState extends State<CheckboxW> {
  bool _checkBoxVal = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: _checkBoxVal,
      tristate: true,
      //splashRadius: 20,
      activeColor:
          Colors.black, // color fondo cuando check y borde cuando no check
      checkColor: Colors.blue, // color del icono check
      focusColor: Colors.cyan[300],
      hoverColor: Colors.cyan[100],
      side: const BorderSide(),
      onChanged: (bool? value) {
        _checkBoxVal = value ?? false;
        setState(() {});
      },
    );
  }
}
