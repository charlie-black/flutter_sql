import 'package:mysql1/mysql1.dart';

class Mysql {
  static String host = 'localhost',
      user = 'postgres',
      password = 'baraza',
      db = 'StudentsData';
  static int port = 5432;

  Mysql();

  Future<MySqlConnection> getConnection() async {
    var settings = new ConnectionSettings(
        host: host,
        port: port,
        user: user,
        password: password,
        db: db
    );
    return await MySqlConnection.connect(settings);
  }
}
