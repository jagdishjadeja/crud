import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class ProductSqlHelper {
  static Database database;
  static void initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = documentsDirectory.path + "TestDB.db";
    database = await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute("CREATE TABLE Product ("
          "id INTEGER PRIMARY KEY AUTOINCREMENT,"
          "name TEXT,"
          ")");
    });
  }
}
