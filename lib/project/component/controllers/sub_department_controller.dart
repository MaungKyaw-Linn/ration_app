import 'package:ration_app/project/component/models/sub_department_model.dart';
import '../datatbase_connection/db_connection.dart';

//insert for sub_department

Future<int> createSubDepartment(SubDepartmentModel subdepartment) async {
  final db = await DatabaseHelper.getDatabase();
  return await db.insert('sub_department_table', subdepartment.toMap());
}

// readAll for sub_department

Future<List<SubDepartmentModel>> readAllSubDepartment() async {
  final db = await DatabaseHelper.getDatabase();
  final result = await db.query('sub_department_table');
  return result.map((json) => SubDepartmentModel.fromMap(json)).toList();
}

// read for sub_department

Future<SubDepartmentModel?> readSubDepartmentById(int id) async {
  final db = await DatabaseHelper.getDatabase();
  final result =
      await db.query('sub_department_table', where: 'id = ?', whereArgs: [id]);
  if (result.isNotEmpty) {
    return SubDepartmentModel.fromMap(result.first);
  } else {
    return null;
  }
}

// update for sub_department

Future<int> updateSubDepartment(SubDepartmentModel subdepartment) async {
  final db = await DatabaseHelper.getDatabase();
  return await db.update(
    'sub_department_table',
    subdepartment.toMap(),
    where: 'id = ?',
    whereArgs: [subdepartment.subDepartmentId],
  );
}

//delete for sub_department

Future<int> deleteSubDepartment(int id) async {
  final db = await DatabaseHelper.getDatabase();
  return await db
      .delete('sub_department_table', where: 'id = ?', whereArgs: [id]);
}

Future<void> close() async {
  final db = await DatabaseHelper.getDatabase();
  db.close();
}
