import 'package:galaxeus_lib/galaxeus_lib.dart';

enum ValidationDataType {
  username,
  phone_number,
  password,
  code,
  token_bot,
  reason,
  first_name,
}

class ValidationData {
  bool is_valid = false;
  String? message;
  ValidationData({
    required this.is_valid,
  });
}

ValidationData validation({
  required String? data,
  required ValidationDataType validationDataType,
}) {
  ValidationData validationData = ValidationData(
    is_valid: false,
  );
  if (validationDataType == ValidationDataType.token_bot) {
    if (data != null) {
      if (!RegExp(r"^([0-9]+:.*)$", caseSensitive: false).hashData(data)) {
        validationData.message = "Format Token Bot Salah";
      } else {
        validationData.is_valid = true;
      }
    } else {
      validationData.message = "Token Bot harus ada";
    }
  }
  if (validationDataType == ValidationDataType.phone_number) {
    if (data != null) {
      if (!RegExp(r"^((\+)?[0-9]+)$", caseSensitive: false).hashData(data)) {
        validationData.message = "Format Phone Number Salah";
      } else {
        validationData.is_valid = true;
      }
    } else {
      validationData.message = "Phone Number harus ada";
    }
  }
  if (validationDataType == ValidationDataType.code) {
    if (data != null) {
      if (!RegExp(r"^([0-9]+)$", caseSensitive: false).hashData(data)) {
        validationData.message = "Format Code Salah";
      } else {
        validationData.is_valid = true;
      }
    } else {
      validationData.message = "Code harus ada";
    }
  }
  if (validationDataType == ValidationDataType.first_name) {
    if (data != null) {
      validationData.is_valid = true;
    } else {
      validationData.message = "First Name harus ada";
    }
  }

  if (validationDataType == ValidationDataType.username) {
    if (data != null) {
      if (!RegExp(r"^([a-z]+)$", caseSensitive: false).hashData(data)) {
        validationData.message = "Format Username Salah";
      } else if (data.length < 5) {
        validationData.message = "Minimal Username 5";
      } else if (data.length > 25) {
        validationData.message = "Maximal username 25";
      } else if (RegExp(r"(kontol|memek|anjing|bangsat)", caseSensitive: false)
          .hashData(data)) {
        validationData.message = "Username tidak boleh mengandung kata kasar";
      } else {
        validationData.is_valid = true;
      }
    } else {
      validationData.message = "Username harus ada";
    }
  }
  if (validationDataType == ValidationDataType.password) {
    if (data != null) {
      if (data.length < 5) {
        validationData.message = "Minimal Password 5";
      } else if (data.length > 50) {
        validationData.message = "Maximal Password 50";
      } else if (!RegExp(r"([a-z]+)", caseSensitive: false).hashData(data)) {
        validationData.message = "Password harus ada huruf";
      } else if (!RegExp(r"([0-9]+)", caseSensitive: false).hashData(data)) {
        validationData.message = "Password harus ada angka";
      } else if (!RegExp(r"([./,\\=\-+?><;:'\]\[|}{_)(*&^%$#@!~`]+)",
              caseSensitive: false)
          .hashData(data)) {
        validationData.message = "Password harus ada simbol";
      } else if (!RegExp(r"([ ]+)", caseSensitive: false).hashData(data)) {
        validationData.message = "Password harus ada space";
      } else if (RegExp(r"(kontol|memek|anjing|bangsat)", caseSensitive: false)
          .hashData(data)) {
        validationData.message = "Password tidak boleh mengandung kata kasar";
      } else {
        validationData.is_valid = true;
      }
    } else {
      validationData.message = "Password harus ada";
    }
  }

  if (validationDataType == ValidationDataType.reason) {
    if (data != null) {
      if (data.length < 50) {
        validationData.message = "Minimal Reason 50";
      } else if (data.length > 250) {
        validationData.message = "Maximal Reason 250";
      } else {
        validationData.is_valid = true;
      }
    } else {
      validationData.message = "Reason harus ada";
    }
  }
  return validationData;
}
