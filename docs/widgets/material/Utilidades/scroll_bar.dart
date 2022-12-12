import 'package:flutter/material.dart';

class ScrollBarW extends StatelessWidget {
  const ScrollBarW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      //controller: ,
      interactive: true, // se puede desplazar al tocar el tumb o track
      thumbVisibility: true,
      trackVisibility: true,
      child: ListView(children: const []),
    );
  }
}
