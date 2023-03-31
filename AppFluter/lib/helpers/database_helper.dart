import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseManager {
  static final DatabaseManager instance = DatabaseManager._init();
  static Database? _database;

  DatabaseManager._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('database.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future<void> _createDB(Database db, int version) async {
    await db.execute('''
      CREATE TABLE estados(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nome TEXT NOT NULL UNIQUE
      );
    ''');

    await db.execute('''
      CREATE TABLE cidades(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nome TEXT NOT NULL,
        estado_id INTEGER NOT NULL,
        FOREIGN KEY (estado_id) REFERENCES estados(id) ON DELETE CASCADE
      );
    ''');

    await _populateDB(db);
  }

  Future<void> _populateDB(Database db) async {
    final batch = db.batch();

    final estados = [
      'Minas Gerais',
      'São Paulo',
      'Rio de Janeiro',
      'Bahia',
      'Paraná',
      'Santa Catarina',
      'Rio Grande do Sul',
      'Ceará',
      'Pernambuco',
      'Goiás',
      'Amazonas',
      'Pará',
      'Maranhão',
      'Roraima',
      'Rondônia',
      'Acre',
      'Amapá',
      'Tocantins',
      'Distrito Federal'
    ];

    for (final estado in estados) {
      batch.insert('estados', {'nome': estado});
    }

    await batch.commit();

    final cidades = {
      'Belo Horizonte': 'Minas Gerais',
      'São Paulo': 'São Paulo',
      'Rio de Janeiro': 'Rio de Janeiro',
      'Salvador': 'Bahia',
      'Curitiba': 'Paraná',
      'Florianópolis': 'Santa Catarina',
      'Porto Alegre': 'Rio Grande do Sul',
      'Fortaleza': 'Ceará',
      'Recife': 'Pernambuco',
      'Goiânia': 'Goiás',
      'Manaus': 'Amazonas',
      'Belém': 'Pará',
      'São Luís': 'Maranhão',
      'Boa Vista': 'Roraima',
      'Porto Velho': 'Rondônia',
      'Rio Branco': 'Acre',
      'Macapá': 'Amapá',
      'Palmas': 'Tocantins',
      'Brasília': 'Distrito Federal',
};
for (final cidade in cidades.keys) {
  final estado = await db.rawQuery(
      'SELECT id FROM estados WHERE nome = ?', [cidades[cidade]]);
  batch.insert('cidades', {'nome': cidade, 'estado_id': estado[0]['id']});
}

await batch.commit();
}

Future<List<Map<String, dynamic>>> query(String table) async {
final db = await instance.database;
return db.query(table);
}

Future<int> insert(String table, Map<String, dynamic> row) async {
final db = await instance.database;
return await db.insert(table, row);
}

Future<int> update(
String table, Map<String, dynamic> row, String whereClause) async {
final db = await instance.database;
return await db.update(table, row, where: whereClause);
}

Future<int> delete(String table, String whereClause) async {
final db = await instance.database;
return await db.delete(table, where: whereClause);
}
}