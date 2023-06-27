// ignore_for_file: non_constant_identifier_names
import "json_dart.dart";
// import "dart:convert";



class LanguageDetailData extends JsonLanguage {

  
  LanguageDetailData(super.rawData);
   
  static Map get defaultData {
    return {"@type":"languageDetailData","name":"Zimbabwe","flag":"🇿🇼","code":"ZW","dial_code":"+263"};
  }

  
  String? get special_type {
    try {
      if (rawData["@type"] is String == false){
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get name {
    try {
      if (rawData["name"] is String == false){
        return null;
      }
      return rawData["name"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get flag {
    try {
      if (rawData["flag"] is String == false){
        return null;
      }
      return rawData["flag"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get code {
    try {
      if (rawData["code"] is String == false){
        return null;
      }
      return rawData["code"] as String;
    } catch (e) {
      return null;
    }
  }


  
  String? get dial_code {
    try {
      if (rawData["dial_code"] is String == false){
        return null;
      }
      return rawData["dial_code"] as String;
    } catch (e) {
      return null;
    }
  }


  
  static LanguageDetailData create({

    String special_type = "languageDetailData",
    String? name,
    String? flag,
    String? code,
    String? dial_code,
})  {
    // LanguageDetailData languageDetailData = LanguageDetailData({

    LanguageDetailData languageDetailData_data_create = LanguageDetailData({
  
      "@type": special_type,
      "name": name,
      "flag": flag,
      "code": code,
      "dial_code": dial_code,


  });
 
// return languageDetailData;
return languageDetailData_data_create;



      }
}