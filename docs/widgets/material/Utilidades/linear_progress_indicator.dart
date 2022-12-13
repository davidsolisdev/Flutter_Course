import 'package:flutter/material.dart';

class LinearProgressIndecatorW extends StatelessWidget {
  const LinearProgressIndecatorW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const LinearProgressIndicator(
      backgroundColor: Colors.white,
      color: Colors.blue,
      value: 1.0, // 0.0 - 1.0 determina la carga que lleva
      //minHeight: ,
    );
  }
}
