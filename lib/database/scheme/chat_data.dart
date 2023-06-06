// ignore_for_file: non_constant_identifier_names
import 'dart:convert';
import 'package:isar/isar.dart';
part "chat_data.g.dart";

@collection
class ChatData {
  Id id = Isar.autoIncrement;

  int client_user_id = 0;

  int chat_id = 0;

  List<int> data = [];

  /// operator map data
  operator [](key) {
    return toJson()[key];
  }

  /// operator map data
  void operator []=(key, value) {
    if (key == "client_user_id") {
      client_user_id = value;
    }

    if (key == "chat_id") {
      chat_id = value;
    }

    if (key == "data") {
      data = value;
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
      "chat_id": chat_id,
      "data": data,
    };
  }

  @override
  String toString() {
    return json.encode(toJson());
  }
}
