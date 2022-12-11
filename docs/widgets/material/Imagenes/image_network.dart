import 'package:flutter/material.dart';

class ImageNetwork extends StatelessWidget {
  const ImageNetwork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: const NetworkImage(
        'https://google.com/owl.jpg',
        headers: {}, // headers de la peticion
      ),
      alignment: Alignment.center,
      fit: BoxFit.cover,
      repeat: ImageRepeat.noRepeat,
      width: 100,
      height: 100,
      semanticLabel: 'Texto de accesibilidad',
      loadingBuilder: (context, child, loadingProgress) {
        return Container();
      },
      errorBuilder: (context, error, stackTrace) {
        return Container();
      },
    );
  }
}

class ImageNetworkW extends StatelessWidget {
  const ImageNetworkW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://google.com/owl.jpg',
      headers: const {}, // headers de la peticion
      alignment: Alignment.center,
      fit: BoxFit.cover,
      repeat: ImageRepeat.noRepeat,
      scale: 1.0,
      width: 100,
      height: 100,
      semanticLabel: 'Texto de accesibilidad',
      loadingBuilder: (context, child, loadingProgress) {
        return Container();
      },
      errorBuilder: (context, error, stackTrace) {
        return Container();
      },
    );
  }
}
