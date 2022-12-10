import 'package:flutter/material.dart';

class Texto extends StatelessWidget {
  const Texto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hola que tal',
      style: _style, // estilo del texto
      textAlign: TextAlign.start, // Alineación del texto
      textDirection: TextDirection.ltr, //left to right
      maxLines: 1, // OPCIONAL indicamos el maximo de lineas
      softWrap: true, //opcional, es el wrap del texto
      overflow: TextOverflow
          .ellipsis, // si ya no cabe e texto remplaza por puntos suspensivos
      selectionColor: Colors.green,
    );
  }

  final TextStyle _style = const TextStyle(
    fontSize: 15.0,
    fontStyle: FontStyle.normal, // italic
    color: Colors.white,
    fontWeight: FontWeight.normal, // bold | w100 - w900
    decoration: TextDecoration.none, // lineThrough | underline | verline
    backgroundColor: Colors.blue, // simula el resaltado
  );
}
