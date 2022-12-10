import 'package:flutter/material.dart';

class AvatarCircular extends StatelessWidget {
  const AvatarCircular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundImage: NetworkImage(''),
      backgroundColor: Colors.amber,
      //foregroundImage: /*aquí va el proveedor de la imagen*/ ,
      child: Text('texto dentro'),
    );
  }
}
