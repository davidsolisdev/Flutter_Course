import 'package:flutter/material.dart';

class PaddingW extends StatelessWidget {
  const PaddingW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 10, left: 10),
      child: Text('Hello World!'),
    );
  }
}
