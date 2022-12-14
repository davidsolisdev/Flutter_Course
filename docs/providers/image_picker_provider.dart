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
import 'package:image_picker/image_picker.dart';

class ImagePickerProvider {
  static Future<XFile?> getImageFromGallery() async {
    return await ImagePicker().pickImage(
      source: ImageSource.gallery,
      requestFullMetadata: true,
      //maxWidth: 1800,
      //maxHeight: 1800,
    );
  }

  static Future<XFile?> getImageFromCamera() async {
    return await ImagePicker().pickImage(
      source: ImageSource.camera,
      requestFullMetadata: true,
      preferredCameraDevice: CameraDevice.rear,
      //maxWidth: 1800,
      //maxHeight: 1800,
    );
  }

  static Future<List<XFile>> getMultipleImagesFromGallery() async {
    List<XFile?> picked = await ImagePicker().pickMultiImage(
      maxWidth: 1800,
      maxHeight: 1800,
      requestFullMetadata: true,
    );

    List<XFile> lista = [];
    for (var i = 0; i < picked.length; i++) {
      if (picked[i] != null) lista.add(picked[i]!);
    }
    return lista;
  }

  static Future<XFile?> getVideoFromGallery() async {
    return await ImagePicker().pickVideo(
      source: ImageSource.gallery,
      maxDuration: const Duration(hours: 1),
    );
  }

  static Future<XFile?> getVideoFromCamera() async {
    return await ImagePicker().pickVideo(
      source: ImageSource.camera,
      preferredCameraDevice: CameraDevice.rear,
      maxDuration: const Duration(hours: 1),
    );
  }
}
