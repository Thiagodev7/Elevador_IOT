import 'package:bitebunk/models/clientes.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';



void createDatabase(){
  getDatabasesPath().then((dbPath) {
    final String path = join(dbPath, 'bytebank.db');
    openDatabase(path, onCreate: (db, version) {
      db.execute('CREATE TABLE clientes('
          'id INTEGER PRIMARY KEY, '
          'nome TEXT, '
          'pd TEXT, '
          'modelo TEXT)');
    }, version: 1);
  });
}

void save (Clientes clientes){
  createDatabase();
}