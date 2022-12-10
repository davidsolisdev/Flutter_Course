import 'package:flutter/material.dart';

class CardW extends StatelessWidget {
  const CardW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.white,
      elevation: 1.0,
      shadowColor: Colors.black,
      child: Text('hola'),
    );
  }
}
