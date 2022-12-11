import 'package:flutter/material.dart';

class FlexibleW extends StatelessWidget {
  const FlexibleW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Flexible(
      flex:
          1, // la suma de todos los flexible en un contenedor determinara el alto que ocupara cada item
      fit: FlexFit.tight, //para que el child ocupe todo e espacio disponible
      child: FractionallySizedBox(),
    );
  }
}
