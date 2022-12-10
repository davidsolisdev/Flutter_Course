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
      onChanged: (bool? value) {
        setState(() => _checkBoxVal = value!);
      },
      value: _checkBoxVal,
      activeColor: Colors.black,
      checkColor: Colors.black,
      focusColor: Colors.cyan[300],
      hoverColor: Colors.cyan[100],
      side: const BorderSide(),
    );
  }
}
