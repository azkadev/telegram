// ignore_for_file: non_constant_identifier_names
import 'dart:convert';
import 'package:isar/isar.dart';
part "account_data.g.dart";

@collection
class AccountData {
  Id id = Isar.autoIncrement;

  int client_user_id = 0;

  int client_id = 0;

  String first_name = "";

  String last_name = "";

  String username = "";

  bool is_default = false;

  bool is_bot = false;

  String client_token = "";

  String client_type = "";

  /// operator map data
  operator [](key) {
    return toJson()[key];
  }

  /// operator map data
  void operator []=(key, value) {
    if (key == "client_user_id") {
      client_user_id = value;
    }

    if (key == "client_id") {
      client_id = value;
    }

    if (key == "first_name") {
      first_name = value;
    }

    if (key == "last_name") {
      last_name = value;
    }

    if (key == "username") {
      username = value;
    }

    if (key == "is_default") {
      is_default = value;
    }

    if (key == "is_bot") {
      is_bot = value;
    }

    if (key == "client_token") {
      client_token = value;
    }

    if (key == "client_type") {
      client_type = value;
    }
  }

  /// return original data json
  Map toMap() {
    return toJson();
  }

  /// return original data json
  Map toJson() {
    return {
      "client_user_id": client_user_id,
      "client_id": client_id,
      "first_name": first_name,
      "last_name": last_name,
      "username": username,
      "is_default": is_default,
      "is_bot": is_bot,
      "client_token": client_token,
      "client_type": client_type,
    };
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(toJson());
  }
}
