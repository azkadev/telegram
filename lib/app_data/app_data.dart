import 'package:telegram/database/database.dart';
import 'package:telegram/language/language.dart';
import 'package:telegram_client/telegram_client.dart';
import 'package:universal_io/io.dart';

class AppData {
  Directory appTempDirectory;
  Directory appSupportDirectory;
  Directory appDocumentDirectory;
  Language language = Language(
    languageCode: "id",
    replaceData: [],
  );
  Tdlib tg;
  DatabaseApp databaseApp;

  AppData({
    required this.appTempDirectory,
    required this.appSupportDirectory,
    required this.appDocumentDirectory,
    required this.tg,
    required this.databaseApp,
  });
}
