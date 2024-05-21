import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'users.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;

  static Database? _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db!;
    }
    _db = await initDb();
    return _db!;
  }

  DatabaseHelper.internal();

  initDb() async {
    String path = join(await getDatabasesPath(), 'users.db');
    var theDb = await openDatabase(path, version: 1, onCreate: _onCreate);
    return theDb;
  }

  void _onCreate(Database db, int version) async {
    await db.execute(
      'CREATE TABLE Users(id INTEGER PRIMARY KEY, username TEXT, password TEXT)',
    );
  }

  Future<int> insertUser(Users user) async {
    var dbClient = await db;
    var result = await dbClient.insert("Users", user.toMap());
    return result;
  }

  Future<bool> login(Users user) async {
    var dbClient = await db;
    var result = await dbClient.rawQuery(
      "SELECT * FROM Users WHERE username = ? AND password = ?",
      [user.usrName, user.usrPassword],
    );
    return result.isNotEmpty;
  }
  Future<int> updateUser(Users user) async {
  var dbClient = await db;
  return await dbClient.update(
    "Users",
    user.toMap(),
    where: "id = ?",
    whereArgs: [user.id],
  );
}
}

