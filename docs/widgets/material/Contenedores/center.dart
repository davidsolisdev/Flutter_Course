import 'package:flutter/material.dart';

class CenterW extends StatelessWidget {
  const CenterW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 0.3;

    return Center(
      widthFactor: double.infinity,
      heightFactor: height,
      child: const Text('Centrado'),
    );
  }
}
