import 'package:flutter/material.dart';

class BotonDeTexto extends StatelessWidget {
  const BotonDeTexto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      autofocus: false,
      onPressed: () {},
      onLongPress: () {},
      child: const Text('EXPLORE'),
    );
  }
}
