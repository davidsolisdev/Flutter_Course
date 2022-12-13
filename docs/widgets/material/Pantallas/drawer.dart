import 'package:flutter/material.dart';

class DrawerW extends StatelessWidget {
  const DrawerW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 16.0,
      width: 304.0,
      //backgroundColor: Colors.white,
      child: Column(children: const []),
    );
  }
}
