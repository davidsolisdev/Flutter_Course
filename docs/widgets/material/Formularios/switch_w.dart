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
      onChanged: (bool value) {
        setState(() => _switchVal = value);
      },
      value: _switchVal,
      activeColor: Colors.black,
    );
  }
}
