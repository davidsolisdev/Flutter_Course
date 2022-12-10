import 'package:flutter/material.dart';

class RedondearBordes extends StatelessWidget {
  const RedondearBordes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      // este widget evita que los hijos se salgan de el y redondea los bordes
      borderRadius: BorderRadius.circular(20.0), // aqui ponemos el redondeo
      child: const Align(
        alignment: Alignment.bottomCenter,
      ),
    );
  }
}
