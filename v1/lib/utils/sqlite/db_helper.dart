import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'models/orders.dart';

final String TableName = 'Orders';

class DBHelper {

  DBHelper._();
  static final DBHelper _db = DBHelper._();
  factory DBHelper() => _db;

  static Database _database;

  Future<Database> get database async {
    if(_database != null) return _database;

    _database = await initDB();
    return _database;
  }

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'Miso.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE $TableName(
            id INTEGER PRIMARY KEY,
            table INTEGER,
            ordered TEXT,
            status INTEGER,
          )
        ''');
      },
      onUpgrade: (db, oldVersion, newVersion){}
    );
  }

  createData(Orders order) async {
    final db = await database;
    var res = await db.rawInsert('INSERT INTO $TableName(name) VALUES(?)', [order.name]);
    return res;
  }

  // //Read
  // getOrders(int id) async {
  //   final db = await database;
  //   var res = await db.rawQuery('SELECT * FROM $TableName WHERE id = ?', [id]);
  //   return res.isNotEmpty ? Orders(id: res.first['id'], name: res.first['name']) : Null;
  // }

  // //Read All
  // Future<List<Orders>> getAllOrders() async {
  //   final db = await database;
  //   var res = await db.rawQuery('SELECT * FROM $TableName');
  //   List<Orders> list = res.isNotEmpty ? res.map((c) => Orders(id:c['id'], name:c['name'])).toList() : [];

  //   return list;
  // }

  // //Delete
  // deleteOrders(int id) async {
  //   final db = await database;
  //   var res = db.rawDelete('DELETE FROM $TableName WHERE id = ?', [id]);
  //   return res;
  // }

  //Delete All
  deleteAllOrders() async {
    final db = await database;
    db.rawDelete('DELETE FROM $TableName');
  }

}

