import 'package:battery_checker_v01/view_model/sql_db_services/res/battery_db.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseService {

  Database? _database;

  Future<Database> get database async {
    
    if (_database != null){
      return _database!;
    }
    _database = await _initialize();
    return _database!;
  }

  Future<String> get fullPath async{
    const name = "Battery.db";
    final path = await getDatabasesPath();
    return join(path, name);
  }

  Future<Database> _initialize() async {
    final path = await fullPath;
    var database = await openDatabase(
      path,
      version: 1,
      onCreate: create,
      singleInstance: true,
      );
      return database;
    
    } 

    Future<void> create(Database database, int version) async => await BatteryDb().createTable(database);
 
}
