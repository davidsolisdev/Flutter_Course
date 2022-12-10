import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

Future<Map<String, dynamic>> readJson(String path) async {
  // * read to file
  String archivoJson = await rootBundle.loadString(path);

  return jsonDecode(archivoJson);
}
