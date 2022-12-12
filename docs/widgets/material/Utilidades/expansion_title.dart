import 'package:flutter/material.dart';

class ExpansionTitleW extends StatelessWidget {
  ExpansionTitleW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: const Text('Opcion 1'),
      //tilePadding: const EdgeInsets.all(1),
      //subtitle: const Text(''),
      leading: const Icon(Icons.ac_unit_sharp),
      trailing: _trailing,
      childrenPadding: const EdgeInsets.all(10),
      initiallyExpanded: false,
      //collapsedBackgroundColor: Colors.red, // color al estar reducido
      //collapsedIconColor: Colors.black, // color al estar reducido
      //collapsedTextColor: Colors.black, // color al estar reducido
      //backgroundColor: Colors.black, // color al desplegar
      //iconColor: Colors.purple, // color de al desplegar
      //textColor: Colors.purple, // color de al desplegar
      onExpansionChanged: (value) {},
      expandedAlignment: Alignment.topLeft, // alineacion del hijo
      children: [Container(height: 100, width: 100, color: Colors.amber)],
    );
  }

  final Widget _trailing = SizedBox(
    width: 125,
    child: Row(
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
        IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
        const Icon(Icons.arrow_drop_down, size: 29),
      ],
    ),
  );
}
