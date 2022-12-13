import 'package:flutter/material.dart';

class StackW extends StatelessWidget {
  const StackW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topStart,
      fit: StackFit.loose,
      //textDirection: TextDirection.ltr,
      children: const [],
    );
  }
}
