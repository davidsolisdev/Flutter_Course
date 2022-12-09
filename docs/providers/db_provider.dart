import 'package:path/path.dart';
import 'package:flutter/services.dart' show rootBundle;

import 'package:sqflite/sqflite.dart';

class DBProvider {
  DBProvider._();
  static Database? _database;
  static final DBProvider db = DBProvider._();

  // conexion publica y activa a la base de datos
  Future<Database> get database async {
    _database ??= await initBD();
    return _database!;
  }

  // leer el archivo sql y retornar los querys como String
  static Future<String> loadQuerys(String fileName) async {
    return await rootBundle.loadString('lib/sql/$fileName');
  }

  // creacion y conexion a la base de datos
  Future<Database> initBD() async {
    String docsDir = await getDatabasesPath();
    String path = join(docsDir, 'Registro.db');

    // Eliminar la base de datos
    //await deleteDatabase(path);

    String queryAlumno = (await loadQuerys('tabla_alumno.sql'))
        .replaceAll('\n', '')
        .replaceAll('  ', '');

    String queryMateria = (await loadQuerys('tabla_materia.sql'))
        .replaceAll('\n', '')
        .replaceAll('  ', '');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute(queryAlumno);
        await db.execute(queryMateria);
      },
    );
  }
}
