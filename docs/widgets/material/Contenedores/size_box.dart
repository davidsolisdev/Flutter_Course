import 'package:flutter/material.dart';

class SizeBox extends StatelessWidget {
  const SizeBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return SizedBox(
      width: screenSize.width * 0.4,
      height: screenSize.height * 0.3,
      child: const Card(child: Text('Hello World!')),
    );
  }
}
