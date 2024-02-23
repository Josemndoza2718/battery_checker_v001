import 'package:battery_checker_v01/model/db_models/battery_register_model.dart';
import 'package:battery_checker_v01/view_model/sql_db_services/res/db_tables.dart';
import 'package:sqflite/sqflite.dart';

class BatteryDb {
  final tableName = "Battery";

  Future<void> createTable(Database database) async {
    await database.execute(
        '''CREATE TABLE IF NOT EXISTS $tableName (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          batteryId TEXT, 
          brand TEXT, 
          model TEXT, 
          startDate INTEGER,
          endDate INTEGER
          )''');
  }
  Future<int> create({required String batteryId}) async {
    final database = await DatabaseService().database;
    return await database.rawInsert('INSERT INTO $tableName (batteryId, startDate) VALUES (?,?)', [batteryId, DateTime.now().millisecondsSinceEpoch],);
  }

  Future<List<Battery>> fetchAll() async {
    final database = await DatabaseService().database;
    final battery = await database.rawQuery('SELECT * FROM $tableName ORDER BY COALESCE(model, brand)'); 
    return battery.map((battery) => Battery.fromSqfliteDatabase(battery)).toList();
  }
  Future<Battery> fetchById( int id ) async {
    final database = await DatabaseService().database;
    final battery = await database.rawQuery('''SELECT * from $tableName WHERE id = ?''', [id]);
    return Battery.fromSqfliteDatabase(battery.first);
  }
  Future<int> update({required int id, String? batteryId}) async {
    final database = await DatabaseService().database;
    return await database.update(
      tableName,
      {
        if( batteryId != null) "batteryId": batteryId,
        "endData":DateTime.now().millisecondsSinceEpoch,
      },
      where: "id = ?",
      conflictAlgorithm: ConflictAlgorithm.rollback,
      whereArgs: [id],
    );
  }

  Future<void> delete(int id) async {
    final database = await DatabaseService().database;
    await database.rawDelete('DELETE FROM $tableName WHERE id = ?', ['id']);
  }
}
