import 'package:flutter/material.dart';

class ResibirParamsRutaAnterior extends StatelessWidget {
  const ResibirParamsRutaAnterior({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Object? parametros = ModalRoute.of(context)!.settings.arguments;

    return Container();
  }
}
