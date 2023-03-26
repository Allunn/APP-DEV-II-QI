import 'package:agenda_de_contatos/model/DAO/connection.dart';
import 'package:sqflite/sqflite.dart';

class ContactDAO {
  static const String _table = "contacts";

  static Future<int> insert(Map<String, dynamic> map) async {
    Database database = await Connection.getConnection();
    int result = await database.insert(_table, map);
    return result;
  }
}
