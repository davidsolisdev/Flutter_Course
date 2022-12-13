import 'package:flutter/material.dart';

class MaterialButtonW extends StatelessWidget {
  const MaterialButtonW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 200.0,
      height: 40.0,
      onPressed: () {},
      color: Colors.lightBlue,
      child: const Text('Material Button'),
      // TODO: falta documentar propiedades
    );
  }
}
