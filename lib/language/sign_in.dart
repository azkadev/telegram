// ignore_for_file: non_constant_identifier_names

import "language_core.dart";
import "language_code_data.dart";

extension SignInExtensionLanguage on Language {
  /// default return
  /// ```dart
  /// "Nomor Telepon Anda";
  /// ```
  String sign_in_phone_number_user({
    String? languageCode,
    List<Map<String, String>>? replacesDatas,
  }) {
    Map language_raw_data = {"id": "Nomor Telepon Anda"};

    return sendLanguage(
      languageCodeData: LanguageCodeData(
        language_raw_data,
      ),
      id: "sign_in_phone_number_user",
      replacesDatas: replacesDatas,
      languageCode: languageCode,
    );
  }

  /// default return
  /// ```dart
  /// "Mohon Konfirmasi kode negara dan\nmasukan nomor telepon anda";
  /// ```
  String sign_in_phone_number_user_display({
    String? languageCode,
    List<Map<String, String>>? replacesDatas,
  }) {
    Map language_raw_data = {
      "id": "Mohon Konfirmasi kode negara dan\nmasukan nomor telepon anda"
    };

    return sendLanguage(
      languageCodeData: LanguageCodeData(
        language_raw_data,
      ),
      id: "sign_in_phone_number_user_display",
      replacesDatas: replacesDatas,
      languageCode: languageCode,
    );
  }
}
