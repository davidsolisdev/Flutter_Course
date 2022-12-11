import 'package:flutter/material.dart';

class ImageAsset extends StatelessWidget {
  const ImageAsset({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: const AssetImage('assets/logo.gif'),
      fit: BoxFit.cover,
      alignment: Alignment.center,
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

class ImageAssetW extends StatelessWidget {
  const ImageAssetW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/logo.gif',
      fit: BoxFit.cover,
      alignment: Alignment.center,
      repeat: ImageRepeat.noRepeat,
      scale: 1.0,
      width: 100,
      height: 100,
      semanticLabel: 'Texto de accesibilidad',
      errorBuilder: (context, error, stackTrace) {
        return Container();
      },
    );
  }
}
