import 'package:flutter/material.dart';

class ContenedorBotones extends StatelessWidget {
  const ContenedorBotones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.end,
      children: <Widget>[
        TextButton(
          onPressed: () {},
          child: const Text('SHARE'),
        ),
        TextButton(
          onPressed: () {},
          child: const Text('EXPLORE'),
        ),
      ],
    );
  }
}
