import 'package:galaxeus_lib/galaxeus_lib.dart';
import "package:path/path.dart" as path;
import 'package:translate_client/translate_client.dart';
import 'package:universal_io/io.dart';

void main(List<String> args) async {
  await jsonToLanguageScript(
    language_raw: language_raw,
    default_language_code_id: "id",
    directory: Directory(path.join(Directory.current.path, "lib", "language")),
    onData: (String origin_data, language_code_id, default_language_code_id) async {
      try {
        return await TranslateClient.translate(text: origin_data, toLanguageCode: language_code_id, fromLanguageCode: default_language_code_id);
      } catch (e) {
        return null;
      }
    },
  );
}

Map language_raw = {
  "sign_in": {
    "phone_number_user": "Nomor Telepon Anda",
    "phone_number_user_display": "Mohon Konfirmasi kode negara dan masukan nomor telepon anda",
  },
};
