// ignore: depend_on_referenced_packages
import 'package:sqflite/sqflite.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';

class DatabaseHelper {
  static Database? _database;

  // Singleton pattern for getting the database instance
  static Future<Database> getDatabase() async {
    _database ??= await _initDatabase();
    return _database!;
  }

  static Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'app_database.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _createTables,
    );
  }

  static Future<void> _createTables(Database db, int version) async {
    await db.execute('''
    CREATE TABLE department_table (
      departmentId INTEGER PRIMARY KEY AUTOINCREMENT,
      departmentName TEXT NOT NULL
    )
  ''');

    await db.execute('''
    CREATE TABLE sub_department_table (
      subDepartmentId INTEGER PRIMARY KEY AUTOINCREMENT,
      departmentId INTEGER NOT NULL,
      subDepartmentName TEXT NOT NULL,
      FOREIGN KEY (departmentId) REFERENCES department_table (departmentId) ON DELETE CASCADE
    )
  ''');

    await db.execute('''
    CREATE TABLE ration_table (
      rationId INTEGER PRIMARY KEY AUTOINCREMENT,
      departmentId INTEGER NOT NU
      subDepartmentId  INTEGER NOT NULL,
      rationName TEXT NOT NULL,
      rate TEXT NOT NULL,
      count INTEGER NOT NULL,
      remark TEXT NOT NULL,
      externalRation TEXT NOT NULL,
      firtDate  INTEGER NOT NULL,
      secondDate INTEGER NOT NULL,
      FOREIGN KEY (departmentId) REFERENCES department_table (departmentId) ON DELETE CASCADE,
      FOREIGN KEY (subDepartmentId) REFERENCES sub_department_table (subDepartmentId) ON DELETE CASCADE
    )
  ''');

    // Enable foreign key constraints
    await db.execute('PRAGMA foreign_keys = ON;');
  }

  //to close database

  close() async {
    var db = _database;
    var result = db!.close();
    return result;
  }
}
