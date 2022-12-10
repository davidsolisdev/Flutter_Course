import 'package:flutter/material.dart';

class ImageNetwork extends StatelessWidget {
  const ImageNetwork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: NetworkImage('https://google.com/owl.jpg'),
      alignment: Alignment.center,
      fit: BoxFit.cover,
      repeat: ImageRepeat.noRepeat,
      width: 100,
      height: 100,
      semanticLabel: 'Texto de accesibilidad',
    );
  }
}

class ImageNetworkW extends StatelessWidget {
  const ImageNetworkW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network('https://google.com/owl.jpg');
  }
}
