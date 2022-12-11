import 'package:flutter/material.dart';

class ButtonAppBarW extends StatelessWidget {
  const ButtonAppBarW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Container(height: 50.0),
    );
  }
}
