import 'package:flutter/material.dart';

class BotonNormal extends StatelessWidget {
  BotonNormal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      autofocus: false,
      onPressed: () {},
      onLongPress: () {},
      style: _style,
      child: const Text('hola'),
    );
  }

  final ButtonStyle _style = ElevatedButton.styleFrom(
    backgroundColor: Colors.black,
    foregroundColor: Colors.white,
    maximumSize: const Size(double.infinity, 35),
    minimumSize: const Size(double.infinity, 35),
  );
}
