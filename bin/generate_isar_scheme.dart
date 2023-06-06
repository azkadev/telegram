// import 'package:database_dart/database_dart.dart';
// import 'package:test/test.dart';

// void main() {
//   test('calculate', () {
//     expect(calculate(), 42);
//   });
// }

// ignore_for_file: unnecessary_brace_in_string_interps, non_constant_identifier_names

import 'dart:io';

import 'package:galaxeus_lib/galaxeus_lib.dart';

import "package:path/path.dart" as path;

void main() async {
  List<Map<String, dynamic>> datas = [
    {
      "@type": "AccountData",
      "client_user_id": 0,
      "client_id": 0,
      "first_name": "",
      "last_name": "",
      "username": "",
      "is_default": false,
      "is_bot": false,
      "client_token": "",
      "client_type": "",
    },
    {
      "@type": "ChatDetail",
      "chat_id": 0,
      "first_name": "",
      "last_name": "",
      "title": "",
      "username": "",
      "status": "",
      "type": "",
      "expire_date": DateTime.now().millisecondsSinceEpoch,
    },
    {
      "@type": "ChatMessage",
      "client_user_id": 0,
      "chat_id": 0,
      "message_id": 0,
      "is_delete": false,
      "expire_date": DateTime.now().millisecondsSinceEpoch,
    },
    {
      "@type": "ChatData",
      "client_user_id": 0,
      "chat_id": 0,
      "from_id": 0,
      "data": [
        0,
      ],
    },
  ];

  // List array = [];
  for (var i = 0; i < datas.length; i++) {
    Map<String, dynamic> data = datas[i];
    if (!data.containsKey("@type")) {
      continue;
    }
    String type_name = (data["@type"] as String);
    if (type_name.isEmpty) {
      continue;
    }
    data.remove("@type");
    JsonDataScript res = jsonToIsar(
      data,
      isUseClassName: true,
      className: type_name,
      // isStatic: false,
    );
    await res.saveToFile(Directory(
        path.join(Directory.current.path, "lib", "database", "scheme")));
  }
}

// bool isUpperCase(String data) {
//   return RegExp(
//     r"[A-Z]",
//   ).hasMatch(data);
// }

// int nextInt(int index, int total) {
//   if ((index + 1) >= total) {
//     return index;
//   } else {
//     return index + 1;
//   }
// }
