import 'package:flutter/material.dart';

class ImageAsset extends StatelessWidget {
  const ImageAsset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage('assets/logo.gif'),
      alignment: Alignment.center,
      fit: BoxFit.cover,
      repeat: ImageRepeat.noRepeat,
      width: 100,
      height: 100,
      semanticLabel: 'Texto de accesibilidad',
    );
  }
}

class ImageAssetW extends StatelessWidget {
  const ImageAssetW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/logo.gif');
  }
}
