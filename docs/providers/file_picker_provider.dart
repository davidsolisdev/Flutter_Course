/*
* flutter pub add file_picker

*/

import 'dart:io';
import 'package:file_picker/file_picker.dart';

class FilePickerProvider {
  static Future<File?> getFile({
    List<String>? extensionesAdmitidas,
    dynamic Function(FilePickerStatus)? onFileLoading,
  }) async {
    if (Platform.isIOS || Platform.isAndroid) {
      FilePicker.platform.clearTemporaryFiles();
    }

    FilePickerResult? result = await FilePicker.platform.pickFiles(
      dialogTitle: '',
      allowMultiple: false,
      type: extensionesAdmitidas != null ? FileType.custom : FileType.any,
      allowedExtensions: extensionesAdmitidas,
      //initialDirectory: '', // path del directorio inicial al lanzarlo
      allowCompression: true,
      lockParentWindow: false,
      withData: false, // si true, da los datos en Uint8List (bytes)
      //withReadStream: false, // si true es un stream<List>
      onFileLoading: onFileLoading,
    );

    if (result != null && result.paths.isNotEmpty && result.paths[0] != null) {
      return File(result.paths[0]!);
    }
    return null;
  }

  static Future<List<File?>> getFiles({
    List<String>? extensionesAdmitidas,
    dynamic Function(FilePickerStatus)? onFileLoading,
  }) async {
    if (Platform.isIOS || Platform.isAndroid) {
      FilePicker.platform.clearTemporaryFiles();
    }

    FilePickerResult? result = await FilePicker.platform.pickFiles(
      dialogTitle: '',
      allowMultiple: true,
      type: extensionesAdmitidas != null ? FileType.custom : FileType.any,
      allowedExtensions: extensionesAdmitidas,
      //initialDirectory: '', // path del directorio inicial al lanzarlo
      allowCompression: true,
      lockParentWindow: false,
      withData: false, // si true, da los datos en Uint8List (bytes)
      //withReadStream: false, // si true es un stream<List>
      onFileLoading: onFileLoading,
    );

    List<File?> lista = [];

    if (result != null && result.paths.isNotEmpty) {
      for (var i = 0; i < result.paths.length; i++) {
        if (result.paths[i] != null) lista.add(File(result.paths[i]!));
      }
    }
    return lista;
  }
}
