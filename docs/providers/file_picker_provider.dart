/*
* flutter pub add file_picker

*/

import 'dart:io';
import 'package:file_picker/file_picker.dart';

class FilePicked {
  FilePicked({required this.name, required this.file});
  String name;
  File file;
}

class FilePickerProvider {
  static Future<FilePicked?> getFile({
    List<String>? extensionesAdmitidas,
    dynamic Function(FilePickerStatus)? onFileLoading,
    String dialogTitle = "",
  }) async {
    if (Platform.isIOS || Platform.isAndroid) {
      FilePicker.platform.clearTemporaryFiles();
    }

    FilePickerResult? result = await FilePicker.platform.pickFiles(
      dialogTitle: dialogTitle,
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
      return FilePicked(name: result.names[0]!, file: File(result.paths[0]!));
    }
    return null;
  }

  static Future<List<FilePicked>> getFiles({
    List<String>? extensionesAdmitidas,
    dynamic Function(FilePickerStatus)? onFileLoading,
    String dialogTitle = "",
  }) async {
    if (Platform.isIOS || Platform.isAndroid) {
      FilePicker.platform.clearTemporaryFiles();
    }

    FilePickerResult? result = await FilePicker.platform.pickFiles(
      dialogTitle: dialogTitle,
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

    List<FilePicked> lista = [];
    if (result != null && result.paths.isNotEmpty) {
      for (var i = 0; i < result.paths.length; i++) {
        if (result.paths[i] != null) {
          lista.add(
            FilePicked(name: result.names[i]!, file: File(result.paths[i]!)),
          );
        }
      }
    }
    return lista;
  }
}
