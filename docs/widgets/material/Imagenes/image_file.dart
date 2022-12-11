/*
  Debemos añadir el permiso para lectura de archivos
  Colocamos lo siguiente en el android/app/src/profile/AndroidManifest.xml
  <uses-permission android:name = "android.permission.READ_EXTERNAL_STORAGE"/>
*/

import 'dart:io';
import 'package:flutter/material.dart';

class ImageFile extends StatelessWidget {
  const ImageFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final File file = File('/storage');

    return Image(
      image: FileImage(file),
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

class ImageFileW extends StatelessWidget {
  const ImageFileW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final File file = File('/storage');

    return Image.file(
      file,
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
