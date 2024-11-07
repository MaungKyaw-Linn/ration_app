import 'package:ration_app/project/component/models/department_model.dart';

import '../datatbase_connection/db_connection.dart';

//insert for department 

Future<int> createDepartment(DepartmentModel department) async{
   final db = await DatabaseHelper.getDatabase();
  return await db.insert('department_table', department.toMap());
}


// readAll for department 

Future<List<DepartmentModel>> readAllDepartment() async {
  final db = await DatabaseHelper.getDatabase();
  final result = await db.query('department_table');
  return result.map((json) => DepartmentModel.fromMap(json)).toList();
}

// read for department 

Future<DepartmentModel?> readDepartmentById(int id) async {
  final db = await DatabaseHelper.getDatabase();
  final result =
      await db.query('department_table', where: 'id = ?', whereArgs: [id]);
  if (result.isNotEmpty) {
    return DepartmentModel.fromMap(result.first);
  } else {
    return null;
  }
}

// update for department 

Future<int> updateDepartment(DepartmentModel department) async {
  final db = await DatabaseHelper.getDatabase();
  return await db.update(
    'department_table',
    department.toMap(),
    where: 'id = ?',
    whereArgs: [department.departmentId],
  );
}

//delete for department 

Future<int> deleteDepartment(int id) async {
  final db = await DatabaseHelper.getDatabase();
  return await db.delete('department_table', where: 'id = ?', whereArgs: [id]);
}

Future<void> close() async {
  final db = await DatabaseHelper.getDatabase();
  db.close();
}
