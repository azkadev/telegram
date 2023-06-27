// ignore_for_file: non_constant_identifier_names
import 'dart:convert';
import 'package:isar/isar.dart';
part "chat_detail.g.dart";

@collection
class ChatDetail {
  // Id id = Isar.autoIncrement;
  Id id = Isar.autoIncrement;

  int chat_id = 0;

  String first_name = "";

  String last_name = "";

  String title = "";

  String username = "";

  String status = "";

  String type = "";

  int expire_date = 1686078425441;

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
      "chat_id": chat_id,
      "first_name": first_name,
      "last_name": last_name,
      "title": title,
      "username": username,
      "status": status,
      "type": type,
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
      "chat_id": 0,
      "first_name": "",
      "last_name": "",
      "title": "",
      "username": "",
      "status": "",
      "type": "",
      "expire_date": 1686078425441
    };
  }

  static ChatDetail create({
    bool utils_is_print_data = false,
  }) {
    ChatDetail chatDetail_data_create = ChatDetail();

    if (utils_is_print_data) {
      // print(chatDetail_data_create.toStringPretty());
    }

    return chatDetail_data_create;
  }
}
