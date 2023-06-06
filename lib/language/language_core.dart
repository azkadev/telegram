// ignore_for_file: non_constant_identifier_names, empty_catches, unnecessary_brace_in_string_interps
//
import 'language_code_data.dart';

class Language {
  String language_code = "id";

  List<Map<String, String>> replace_data = [];
  Language({
    String languageCode = "id",
    required List<Map<String, String>> replaceData,
  }) {
    language_code = languageCode;
    replace_data = replaceData;
  }

  String sendLanguage({
    required LanguageCodeData languageCodeData,
    required String id,
    List<Map<String, String>>? replacesDatas,
    String? languageCode,
  }) {
    languageCode ??= language_code;
    replacesDatas ??= replace_data;
    try {
      String language_result = languageCodeData[languageCode] ??
          languageCodeData["id"] ??
          "Translation not found\n\n${id}: Tidak ada bahasa ${languageCode}";
      if (language_result.isEmpty) {
        language_result =
            "Translation not found\n\n${id}: Tidak ada bahasa ${languageCode}";
      }

      return variableMessage(
        text: language_result,
        replacesDatas: replacesDatas,
      );
    } catch (e) {
      return "LanguageBot error\nId: ${id}\nRes: ${e.toString()}";
    }
  }

  String variableMessage({
    required String text,
    List<Map<String, String>>? replacesDatas,
  }) {
    replacesDatas ??= replace_data;
    try {
      String message = "";
      message = text;
      List<Map<String, String>> replaceData = [...replacesDatas];
      for (var i = 0; i < replaceData.length; i++) {
        Map loopData = replaceData[i];
        if (loopData["origin"] != null && loopData["replace"] != null) {
          try {
            message = message.replaceAll(
                RegExp(loopData["origin"] ?? "", caseSensitive: false),
                loopData["replace"] ?? "");
          } catch (e) {}
        }
      }

      return message;
    } catch (e) {
      return text;
    }
  }
}
