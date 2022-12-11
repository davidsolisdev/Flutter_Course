import 'package:flutter/material.dart';

class CenterW extends StatelessWidget {
  const CenterW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 0.3;

    return Center(
      heightFactor: height,
      widthFactor: double.infinity,
      child: const Text('Centrado'),
    );
  }
}
