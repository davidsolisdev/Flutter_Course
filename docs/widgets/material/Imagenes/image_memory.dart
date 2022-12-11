/*
  Para usar este tipo de imagenes debemos decodificar de base64
  para obtener el areglo de bytes
*/

import 'dart:typed_data';
import 'package:flutter/material.dart';

class ImageMemory extends StatelessWidget {
  ImageMemory({Key? key}) : super(key: key);

  final Uint8List imagen = Uint8List(1);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: MemoryImage(imagen, scale: 1.0),
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

class ImageMemoryW extends StatelessWidget {
  ImageMemoryW({Key? key}) : super(key: key);

  final Uint8List imagen = Uint8List(1);

  @override
  Widget build(BuildContext context) {
    return Image.memory(
      imagen,
      alignment: Alignment.center,
      fit: BoxFit.cover,
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
