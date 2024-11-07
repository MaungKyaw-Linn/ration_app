import 'package:ration_app/project/component/datatbase_connection/db_connection.dart';
import 'package:ration_app/project/component/models/ration_model.dart';

// insert for ration table

Future<int> createRation(RationModel ration) async {
  final db = await DatabaseHelper.getDatabase();
  return await db.insert('ration_table', ration.toMap());
}

// readAll for ration table

Future<List<RationModel>> readAllRation() async {
  final db = await DatabaseHelper.getDatabase();
  final result = await db.query('ration_table');
  return result.map((json) => RationModel.fromMap(json)).toList();
}

// read for ration table

Future<RationModel?> readRationById(int id) async {
  final db = await DatabaseHelper.getDatabase();
  final result =
      await db.query('ration_table', where: 'id = ?', whereArgs: [id]);
  if (result.isNotEmpty) {
    return RationModel.fromMap(result.first);
  } else {
    return null;
  }
}

// update for ration table

Future<int> updateRation(RationModel ration) async {
  final db = await DatabaseHelper.getDatabase();
  return await db.update(
    'ration_table',
    ration.toMap(),
    where: 'id = ?',
    whereArgs: [ration.rationId],
  );
}

//delete for ration table

Future<int> deleteRation(int id) async {
  final db = await DatabaseHelper.getDatabase();
  return await db.delete('ration_table', where: 'id = ?', whereArgs: [id]);
}

Future<void> close() async {
  final db = await DatabaseHelper.getDatabase();
  db.close();
}
