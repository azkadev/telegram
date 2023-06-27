// ignore_for_file: non_constant_identifier_names
import 'dart:convert';
import 'package:isar/isar.dart';
part "account_data.g.dart";

@collection
class AccountData {
  // Id id = Isar.autoIncrement;
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
      "client_id": 0,
      "first_name": "",
      "last_name": "",
      "username": "",
      "is_default": false,
      "is_bot": false,
      "client_token": "",
      "client_type": ""
    };
  }

  static AccountData create({
    bool utils_is_print_data = false,
  }) {
    AccountData accountData_data_create = AccountData();

    if (utils_is_print_data) {
      // print(accountData_data_create.toStringPretty());
    }

    return accountData_data_create;
  }
}
