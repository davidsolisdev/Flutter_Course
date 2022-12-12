import 'package:flutter/material.dart';

class RedondearBordes extends StatelessWidget {
  const RedondearBordes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // este widget evita que los hijos se salgan de el y redondea los bordes
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: const Align(alignment: Alignment.bottomCenter),
    );
  }
}
