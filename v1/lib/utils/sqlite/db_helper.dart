import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import 'models/category.dart';
import 'models/orders.dart';

import 'package:logging/logging.dart';

final log = Logger('ExampleLogger');

const String TableName = 'Orders';
const String CategoryTable = 'Category';
const String MenuTable = 'Menu';

class DatabaseHelper {
  static const _databaseName = "Miso.db";
  static const _databaseVersion = 1;

  static const ordertable = 'Orders';

  static const orderid = 'orderId';
  static const table = 'tNumber';
  static const ordered = 'ordered';
  static const status = 'status';

  late Database _db;

  // this opens the database (and creates it if it doesn't exist)
  Future<void> init() async {
    print('Start database');
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, _databaseName);
    print(path);
    _db = await openDatabase(
      path,
      version: _databaseVersion,
      onCreate: _onCreate,
    );
  }
  
  // SQL code to create the database table
  Future _onCreate(Database db, int version) async {
    await db.execute('''
          CREATE TABLE $ordertable (
            $orderid INTEGER PRIMARY KEY,
            $table INTEGER,
            $ordered TEXT,
            $status TEXT,
            createdDate DATETIME
          )''');
    await db.execute('CREATE TABLE Tax (taxId INTEGER PRIMARY KEY, name TEXT, value REAL)');
    await db.execute('INSERT INTO Tax (taxId, name, value) VALUES (0, "Non-Acohol", 3)');
    await db.execute('INSERT INTO Tax (taxId, name, value) VALUES (1, "Acohol", 16)');
    await db.execute('CREATE TABLE Category (categoryId INTEGER PRIMARY KEY, name TEXT)');
    await db.execute('INSERT INTO Category (categoryId, name) VALUES (0, "Starter")');
    await db.execute('INSERT INTO Category (categoryId, name) VALUES (1, "Main")');
    await db.execute('INSERT INTO Category (categoryId, name) VALUES (2, "Deserts")');
    await db.execute('INSERT INTO Category (categoryId, name) VALUES (3, "Drinks")');
    await db.execute('INSERT INTO Category (categoryId, name) VALUES (4, "Alcohols")');
    await db.execute('CREATE TABLE Menu (menuId INTEGER PRIMARY KEY, name TEXT, price REAL, categoryId INTEGER, taxId INTEGER, CONSTRAINT fk_Category FOREIGN KEY (categoryId) REFERENCES Category(categoryId), CONSTRAINT fk_Tax FOREIGN KEY (taxId) REFERENCES Tax(taxId))');
  }

  // Helper methods

  // Inserts a row in the database where each key in the Map is a column name
  // and the value is the column value. The return value is the id of the
  // inserted row.
  Future<int> insert(Map<String, dynamic> row) async {
    return await _db.insert(ordertable, row);
  }

  // All of the rows are returned as a list of maps, where each map is
  // a key-value list of columns.
  Future<List<Map<String, dynamic>>> queryAllRows() async {
    return await _db.query(ordertable);
  }

  Future<List<dynamic>> getAllCategories() async {
    var res = await _db.rawQuery('SELECT * FROM $CategoryTable');
    List<dynamic> list = res;
    print("Get all categories: ");
    print(list);
    return list;
  }

  Future<List<dynamic>> getAllMenus() async {
    var res = await _db.rawQuery('SELECT * FROM $MenuTable');
    List<dynamic> list = res;
    print("Get all menus: ");
    print(list);
    return list;
  }

  // All of the methods (insert, query, update, delete) can also be done using
  // raw SQL commands. This method uses a raw query to give the row count.
  Future<int> queryRowCount() async {
    final results = await _db.rawQuery('SELECT COUNT(*) FROM $ordertable');
    return Sqflite.firstIntValue(results) ?? 0;
  }

  // We are assuming here that the id column in the map is set. The other
  // column values will be used to update the row.
  Future<int> update(Map<String, dynamic> row) async {
    int id = row[orderid];
    return await _db.update(
      ordertable,
      row,
      where: '$orderid = ?',
      whereArgs: [id],
    );
  }

  // Deletes the row specified by the id. The number of affected rows is
  // returned. This should be 1 as long as the row exists.
  Future<int> delete(int id) async {
    return await _db.delete(
      ordertable,
      where: '$orderid = ?',
      whereArgs: [id],
    );
  }
}
