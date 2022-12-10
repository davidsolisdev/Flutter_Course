import 'package:flutter/material.dart';

class SafeAreaW extends StatelessWidget {
  const SafeAreaW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Text('Este texto aparecera en la zona segura, debajo del notch'),
    );
  }
}
