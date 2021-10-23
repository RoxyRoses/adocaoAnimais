/*import 'package:adocao_gato1/model/usuario.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class NotesDatabase {
  static final NotesDatabase instance = NotesDatabase._init();

  static Database? _database;

  NotesDatabase._init();

  Future<Database?> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('Adocao.db');
    return _database;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB)
  }

  Future _createDB(Database db, int version) async{
    final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    final textType = 'TEXT NOT NULL';

    await db.execute('''CREATE TABLE $tableUsuario(
      ${UsuarioFields.id} $idType,
      ${UsuarioFields.nome} $textType,
      ${UsuarioFields.email} $textType,
      ${UsuarioFields.telefone} $textType,
      ${UsuarioFields.cpf} $textType,



    )''');
  }

  Future<Usuario> create(Usuario note) async{
    final db = await instance.database;

    final id = await db.insert(tableUsuario, usuario.toJson());

  }

  Future close() async {
    final db = await instance.database;

    db!.close();
  }

}
*/