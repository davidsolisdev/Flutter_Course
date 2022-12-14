import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../providers/image_picker_provider.dart';

class ImagesField extends StatefulWidget {
  ImagesField({
    required this.listImages,
    required this.widthImage,
    required this.heightImage,
    super.key,
  });

  List<XFile> listImages;
  final double widthImage;
  final double heightImage;

  @override
  State<ImagesField> createState() => _ImagesFieldState();
}

class _ImagesFieldState extends State<ImagesField> {
  List<XFile?> _images = [null];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: widget.heightImage,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: _images.length,
            separatorBuilder: (_, __) => const SizedBox(width: 10),
            itemBuilder: (context, i) => Container(
              height: widget.heightImage,
              width: widget.widthImage,
              decoration: BoxDecoration(
                image: _images[i] != null
                    ? DecorationImage(
                        image: FileImage(File(_images[i]!.path)),
                        fit: BoxFit.cover)
                    : const DecorationImage(
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2020/04/30/15/34/code-5113374_960_720.jpg'),
                        fit: BoxFit.cover),
              ),
            ),
          ),
        ),
        const SizedBox(height: 1),
        ElevatedButton.icon(
          onPressed: () async {
            List<XFile> picked =
                await ImagePickerProvider.getMultipleImagesFromGallery();
            if (picked.isNotEmpty) setState(() => _images = picked);
            widget.listImages = picked;
          },
          icon: const Icon(Icons.camera_alt_outlined),
          label: const Text('Elegir fotos'),
        )
      ],
    );
  }
}
