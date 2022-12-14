import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../providers/image_picker_provider.dart';

class ImageField extends StatefulWidget {
  ImageField({
    required this.image,
    required this.widthImage,
    required this.heightImage,
    super.key,
  });

  XFile? image;
  final double widthImage;
  final double heightImage;

  @override
  State<ImageField> createState() => _ImageFieldState();
}

class _ImageFieldState extends State<ImageField> {
  XFile? _image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: widget.heightImage,
          width: widget.widthImage,
          decoration: BoxDecoration(
            image: _image != null
                ? DecorationImage(
                    image: FileImage(File(_image!.path)), fit: BoxFit.cover)
                : const DecorationImage(
                    image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2020/04/30/15/34/code-5113374_960_720.jpg'),
                    fit: BoxFit.cover),
          ),
        ),
        const SizedBox(height: 1),
        ElevatedButton.icon(
          onPressed: () async {
            XFile? picked = await ImagePickerProvider.getImageFromGallery();
            if (picked != null) setState(() => _image = picked);
            widget.image = picked;
          },
          icon: const Icon(Icons.camera_alt_outlined),
          label: const Text('Elegir foto'),
        )
      ],
    );
  }
}
