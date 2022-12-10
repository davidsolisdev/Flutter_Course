import 'package:flutter/material.dart';

class BotonNormal extends StatelessWidget {
  const BotonNormal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      autofocus: false,
      onPressed: () {},
      onLongPress: () {},
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        onPrimary: Colors.white,
        maximumSize: const Size(double.infinity, 35),
        minimumSize: const Size(double.infinity, 35),
      ),
      child: const Text('hola'),
    );
  }
}
