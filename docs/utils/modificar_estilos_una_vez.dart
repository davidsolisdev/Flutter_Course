import 'package:flutter/material.dart';

class ModifyStyles extends StatelessWidget {
  const ModifyStyles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextStyle? estilos =
        Theme.of(context).textTheme.headline1?.apply(color: Colors.blue);

    return Container();
  }
}
