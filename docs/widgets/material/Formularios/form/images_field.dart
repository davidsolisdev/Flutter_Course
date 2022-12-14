import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../providers/image_picker_provider.dart';
import 'bloc/form_bloc.dart';

class ImagesField extends StatefulWidget {
  const ImagesField({
    required this.widthImage,
    required this.heightImage,
    super.key,
  });

  final double widthImage;
  final double heightImage;

  @override
  State<ImagesField> createState() => _ImagesFieldState();
}

class _ImagesFieldState extends State<ImagesField> {
  List<XFile?> _images = [null];

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<FormBloc>(context, listen: true);

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
            bloc.add(ChangeFormValue(bloc.state, listImages: picked));
          },
          icon: const Icon(Icons.camera_alt_outlined),
          label: const Text('Elegir fotos'),
        )
      ],
    );
  }
}
