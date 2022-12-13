import 'package:flutter/material.dart';

class CircularProgressIndicatorW extends StatelessWidget {
  const CircularProgressIndicatorW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      backgroundColor: Colors.white,
      color: Colors.blue,
      strokeWidth: 4.0,
      value: 1.0, // 0.0 - 1.0 determina la carga que lleva
    );
  }
}
