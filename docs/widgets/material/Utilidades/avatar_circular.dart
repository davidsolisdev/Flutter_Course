import 'package:flutter/material.dart';

class AvatarCircular extends StatelessWidget {
  const AvatarCircular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      maxRadius: 50, // tamaño del avatar
      minRadius: 20,
      backgroundImage: NetworkImage(''),
      foregroundImage: NetworkImage(''), // se sobrepone a background
      //onBackgroundImageError: (exception, stackTrace) {},
      //onForegroundImageError: (exception, stackTrace) {},
      backgroundColor: Colors.amber,
      foregroundColor: Colors.black, // color del texto
      child: Text('texto dentro'),
    );
  }
}
