import 'package:flutter/material.dart';

class BotonDeContorno extends StatelessWidget {
  const BotonDeContorno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      onLongPress: () {},
      autofocus: false,
      style: const ButtonStyle(),
      child: const Text('OutlineButton'),
    );
  }
}
