/*
* flutter pub add image_picker
*
*
* pegar lo siguiente en la ruta: ios/Runner/Info.plist >  <dict> </dict>
* <key>NSPhotoLibraryUsageDescription</key>
* <string>Sube tus imagenes desde galeria</string>
* <key>NSCameraUsageDescription</key>
* <string>Toma una foto desde la camara</string>
* <key>NSMicrophoneUsageDescription</key>
* <string>Sube tus videos</string>
*/
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ImagePickerProvider {
  static Future<File?> getImageFromGallery() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      requestFullMetadata: true,
      //maxWidth: 1800,
      //maxHeight: 1800,
    );

    if (pickedFile != null) return File(pickedFile.path);
    return null;
  }

  static Future<File?> getImageFromCamera() async {
    XFile? pickedFile = await ImagePicker().pickImage(
      source: ImageSource.camera,
      requestFullMetadata: true,
      preferredCameraDevice: CameraDevice.rear,
      //maxWidth: 1800,
      //maxHeight: 1800,
    );

    if (pickedFile != null) return File(pickedFile.path);
    return null;
  }

  static Future<List<File?>> getMultipleImagesFromGallery() async {
    List<XFile?> pickedFiles = await ImagePicker().pickMultiImage(
      maxWidth: 1800,
      maxHeight: 1800,
      requestFullMetadata: true,
    );

    List<File> lista = [];
    if (pickedFiles.isNotEmpty) {
      pickedFiles.map((pF) {
        if (pF != null) lista.add(File(pF.path));
      });
    }
    return lista;
  }

  static Future<File?> getVideoFromGallery() async {
    XFile? pickedFile = await ImagePicker().pickVideo(
      source: ImageSource.gallery,
      maxDuration: const Duration(hours: 1),
    );

    if (pickedFile != null) return File(pickedFile.path);
    return null;
  }

  static Future<File?> getVideoFromCamera() async {
    XFile? pickedFile = await ImagePicker().pickVideo(
      source: ImageSource.camera,
      preferredCameraDevice: CameraDevice.rear,
      maxDuration: const Duration(hours: 1),
    );

    if (pickedFile != null) return File(pickedFile.path);
    return null;
  }
}
