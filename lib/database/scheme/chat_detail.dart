// ignore_for_file: non_constant_identifier_names
import 'dart:convert';
import 'package:isar/isar.dart';
part "chat_detail.g.dart";

@collection
class ChatDetail {
  Id id = Isar.autoIncrement;

  int chat_id = 0;

  String first_name = "";

  String last_name = "";

  String title = "";

  String username = "";

  String status = "";

  String type = "";

  /// operator map data
  operator [](key) {
    return toJson()[key];
  }

  /// operator map data
  void operator []=(key, value) {
    if (key == "chat_id") {
      chat_id = value;
    }

    if (key == "first_name") {
      first_name = value;
    }

    if (key == "last_name") {
      last_name = value;
    }

    if (key == "title") {
      title = value;
    }

    if (key == "username") {
      username = value;
    }

    if (key == "status") {
      status = value;
    }

    if (key == "type") {
      type = value;
    }
  }

  /// return original data json
  Map toMap() {
    return toJson();
  }

  /// return original data json
  Map toJson() {
    return {
      "chat_id": chat_id,
      "first_name": first_name,
      "last_name": last_name,
      "title": title,
      "username": username,
      "status": status,
      "type": type,
    };
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(toJson());
  }
}
