// ignore_for_file: non_constant_identifier_names
import 'dart:convert';
import 'package:isar/isar.dart';
part "chat_message.g.dart";

@collection
class ChatMessage {
  // Id id = Isar.autoIncrement;
  Id id = Isar.autoIncrement;

  int client_user_id = 0;

  int chat_id = 0;

  int message_id = 0;

  bool is_delete = false;

  int expire_date = 1686078425441;

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

    if (key == "message_id") {
      message_id = value;
    }

    if (key == "is_delete") {
      is_delete = value;
    }

    if (key == "expire_date") {
      expire_date = value;
    }
  }

  /// return original data json
  Map utils_remove_values_null() {
    Map rawData = toJson();
    rawData.forEach((key, value) {
      if (value == null) {
        rawData.remove(key);
      }
    });
    return rawData;
  }

  /// return original data json
  Map utils_remove_by_values(List values) {
    Map rawData = toJson();
    rawData.forEach((key, value) {
      for (var element in values) {
        if (value == element) {
          rawData.remove(key);
        }
      }
    });

    return rawData;
  }

  /// return original data json
  Map utils_remove_by_keys(List keys) {
    Map rawData = toJson();
    for (var element in keys) {
      rawData.remove(element);
    }
    return rawData;
  }

  /// return original data json
  Map utils_filter_by_keys(List keys) {
    Map rawData = toJson();
    Map jsonData = {};
    for (var key in keys) {
      jsonData[key] = rawData[key];
    }
    return jsonData;
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
      "message_id": message_id,
      "is_delete": is_delete,
      "expire_date": expire_date,
    };
  }

  /// return string data encode json original data
  String toStringPretty() {
    return JsonEncoder.withIndent(" " * 2).convert(toJson());
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(toJson());
  }

  /// return original data json
  static Map get defaultData {
    return {
      "client_user_id": 0,
      "chat_id": 0,
      "message_id": 0,
      "is_delete": false,
      "expire_date": 1686078425441
    };
  }

  static ChatMessage create({
    bool utils_is_print_data = false,
  }) {
    ChatMessage chatMessage_data_create = ChatMessage();

    if (utils_is_print_data) {
      // print(chatMessage_data_create.toStringPretty());
    }

    return chatMessage_data_create;
  }
}
