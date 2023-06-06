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
      Map language_raw_data = {"id":"Nomor Telepon Anda","ar":"رقم تليفونك","am":"ስልክ ቁጥርዎ","az":"Telefon nömrəniz","bs":"Vaš telefonski broj","be":"Ваш нумар тэлефона","bn":"আপনার ফোন নম্বর","bg":"Вашият телефонен номер","ca":"El seu número de telèfon","ky":"Телефон номериңиз","co":"U vostru numeru di telefunu","km":"លេខទូរស័ព្ទ​របស់​អ្នក","hr":"Vaš broj telefona","cy":"Eich rhif ffôn","sv":"Ditt telefonnummer","en":"Your phone number","et":"Sinu telefoninumber","fi":"Puhelinnumerosi","fr":"Votre numéro de téléphone","ga":"D’uimhir theileafóin","de":"Deine Telefonnummer","gl":"O seu número de teléfono","gd":"An àireamh fòn agad","gu":"તમારો ફોન નંબર","ht":"Nimewo telefòn ou","hu":"A telefonszámod","is":"Símanúmerið þitt","it":"Il tuo numero di telefono","ko":"전화 번호","la":"Your phone numerus","lv":"Jūsu tālruņa numurs","lb":"Är Telefonsnummer","lt":"Jūsų telefono numeris","mk":"Вашиот телефонски број","mg":"Ny laharan'ny findainao","my":"သင့်ဖုန်းနံပါတ်","ml":"നിങ്ങളുടെ ഫോൺ നമ്പർ","mt":"In-numru tat-telefon tiegħek","mr":"तुझा दूरध्वनी क्रमांक","mn":"Таны утасны дугаар","ms":"Nombor telefon anda","nl":"Jouw telefoon nummer","ne":"तिम्रो फोन नम्बर","no":"Telefonnummeret ditt","ps":"ستاسو د تلیفون شمیره","pa":"ਤੁਹਾਡਾ ਫੋਨ ਨੰਬਰ","pl":"Twój numer telefonu","pt":"Seu número de telefone","ro":"Numarul tau de telefon","ru":"Ваш номер телефона","rw":"Nimero yawe ya terefone","kn":"ನಿಮ್ಮ ಫೋನ್ ಸಂಖ್ಯೆ","sm":"Lau numera telefoni","st":"Nomoro ea hau ea mohala","sn":"Nhamba yako yefoni","sl":"Vaša telefonska številka","sk":"Vaše telefónne číslo","si":"ඔබගේ දුරකථන අංකය","so":"Lambarka taleefankaaga","es":"Su número de teléfono","sd":"توهان جو فون نمبر","sr":"Ваш број телефона","th":"หมายเลขโทรศัพท์ของคุณ","tl":"Iyong numero ng telepono","tg":"Рақами телефони шумо","tk":"Telefon belgiňiz","tt":"Сезнең телефон номерыгыз","tr":"Telefon numaran","ug":"تېلېفون نومۇرىڭىز","uz":"Sizning telefon raqamingiz","vi":"Số điện thoại của bạn"};

      return sendLanguage( 
        languageCodeData: LanguageCodeData(
          language_raw_data,
        ),
        id: "sign_in_phone_number_user",
        replacesDatas: replacesDatas,
        languageCode: languageCode,
      );
     
    }    /// default return
    /// ```dart
    /// "Mohon Konfirmasi kode negara dan masukan nomor telepon anda";
    /// ```
    String sign_in_phone_number_user_display({
      String? languageCode,
      List<Map<String, String>>? replacesDatas,
    }) {
      Map language_raw_data = {"id":"Mohon Konfirmasi kode negara dan masukan nomor telepon anda","ar":"يرجى تأكيد رمز بلدك وإدخال رقم هاتفك","am":"እባክዎን የአገርዎን ኮድ ያረጋግጡ እና የስልክ ቁጥርዎን ያስገቡ","az":"Zəhmət olmasa ölkə kodunuzu təsdiqləyin və telefon nömrənizi daxil edin","bs":"Potvrdite kod svog zemlje i unesite svoj telefonski broj","be":"Калі ласка, пацвердзіце свой код краіны і ўвядзіце нумар тэлефона","bn":"দয়া করে আপনার দেশের কোডটি নিশ্চিত করুন এবং আপনার টেলিফোন নম্বর লিখুন","bg":"Моля, потвърдете кода на държавата си и въведете вашия телефонен номер","ca":"Confirmeu el vostre codi de país i introduïu el vostre número de telèfon","ky":"Өлкө кодуңузду ырастаңыз жана телефон номериңизди киргизиңиз","co":"Per piacè cunfirmate u vostru codice di paese è inserite u vostru numeru di telefunu","km":"សូមបញ្ជាក់លេខកូដប្រទេសរបស់អ្នកហើយបញ្ចូលលេខទូរស័ព្ទរបស់អ្នក","hr":"Potvrdite svoj kôd zemlje i unesite svoj telefonski broj","cy":"Cadarnhewch eich cod gwlad a nodwch eich rhif ffôn","sv":"Bekräfta din landskod och ange ditt telefonnummer","en":"Please confirm your country code and enter your telephone number","et":"Palun kinnitage oma riigi kood ja sisestage oma telefoninumber","fi":"Vahvista maalauksesi ja kirjoita puhelinnumerosi","fr":"Veuillez confirmer votre code de pays et entrez votre numéro de téléphone","ga":"Deimhnigh do chód tíre le do thoil agus iontráil d’uimhir theileafóin","de":"Bitte bestätigen Sie Ihren Ländercode und geben Sie Ihre Telefonnummer ein","gl":"Confirma o teu código de país e introduce o teu número de teléfono","gd":"Feuch an dearbhaich thu an còd dùthcha agad agus cuir a-steach an àireamh fòn agad","gu":"કૃપા કરીને તમારા દેશ કોડની પુષ્ટિ કરો અને તમારો ટેલિફોન નંબર દાખલ કરો","ht":"Tanpri konfime kòd peyi ou ak antre nan nimewo telefòn ou","hu":"Kérjük, erősítse meg az országkódját, és írja be telefonszámát","is":"Vinsamlegast staðfestu landkóðann þinn og sláðu inn símanúmerið þitt","it":"Conferma il codice del tuo paese e inserisci il tuo numero di telefono","ko":"국가 코드를 확인하고 전화 번호를 입력하십시오","la":"Placere confirmet patria codice et intra telephonium numerus","lv":"Lūdzu, apstipriniet savu valsts kodu un ievadiet tālruņa numuru","lb":"Confirméiert w.e.g. Äert Landcode an gitt Är Telefonsnummer","lt":"Patvirtinkite savo šalies kodą ir įveskite savo telefono numerį","mk":"Ве молиме, потврдете го кодот на вашата земја и внесете го вашиот телефонски број","mg":"Azafady, hamafiso ny fehezan-tanindrazanao ary ampidiro ny nomeraon-telefaonanao","my":"ကျေးဇူးပြု. သင်၏တိုင်းပြည်ကုဒ်ကိုအတည်ပြုပြီးသင်၏တယ်လီဖုန်းနံပါတ်ကိုထည့်ပါ","ml":"നിങ്ങളുടെ രാജ്യ കോഡ് സ്ഥിരീകരിച്ച് നിങ്ങളുടെ ടെലിഫോൺ നമ്പർ നൽകുക","mt":"Jekk jogħġbok ikkonferma l-kodiċi ta 'pajjiżek u daħħal in-numru tat-telefon tiegħek","mr":"कृपया आपल्या देशाच्या कोडची पुष्टी करा आणि आपला दूरध्वनी क्रमांक प्रविष्ट करा","mn":"Улсын кодоо баталгаажуулаад утасны дугаараа оруулна уу","ms":"Sila sahkan kod negara anda dan masukkan nombor telefon anda","nl":"Bevestig uw landcode en voer uw telefoonnummer in","ne":"कृपया तपाईंको देश कोड पुष्टि गर्नुहोस् र तपाईंको टेलिफोन नम्बर प्रविष्ट गर्नुहोस्","no":"Bekreft din landskode og skriv inn telefonnummeret ditt","ps":"مهرباني وکړئ د خپل هیواد کوډ تایید کړئ او خپل د تلیفون شمیره دننه کړئ","pa":"ਕਿਰਪਾ ਕਰਕੇ ਆਪਣੇ ਦੇਸ਼ ਦੇ ਕੋਡ ਦੀ ਪੁਸ਼ਟੀ ਕਰੋ ਅਤੇ ਆਪਣਾ ਟੈਲੀਫੋਨ ਨੰਬਰ ਦਰਜ ਕਰੋ","pl":"Potwierdź kod kraju i wprowadź swój numer telefonu","pt":"Confirme seu código de país e insira seu número de telefone","ro":"Vă rugăm să confirmați codul țării și introduceți numărul dvs. de telefon","ru":"Пожалуйста, подтвердите код своей страны и введите номер телефона","rw":"Nyamuneka wemeze kode yigihugu yawe hanyuma wandike numero yawe ya terefone","kn":"ದಯವಿಟ್ಟು ನಿಮ್ಮ ದೇಶದ ಕೋಡ್ ಅನ್ನು ದೃ irm ೀಕರಿಸಿ ಮತ್ತು ನಿಮ್ಮ ದೂರವಾಣಿ ಸಂಖ್ಯೆಯನ್ನು ನಮೂದಿಸಿ","sm":"Faʻamolemole faʻamaonia lau atunuʻu code ma ulufale lau numera telefoni","st":"Ka kopo netefatsa khoutu ea hau ea naha ebe u kenya nomoro ea hau ea mohala","sn":"Ndokumbira usimbise yako yenyika kodhi uye pinda yako nhamba yefoni","sl":"Potrdite kodo svoje države in vnesite svojo telefonsko številko","sk":"Potvrďte svoj kód krajiny a zadajte svoje telefónne číslo","si":"කරුණාකර ඔබේ රට කේතය තහවුරු කර ඔබගේ දුරකථන අංකය ඇතුළත් කරන්න","so":"Fadlan xaqiiji nambarka dalkaaga oo geli lambarkaaga taleefanka","es":"Confirme su código de país e ingrese su número de teléfono","sd":"مهرباني ڪري پنهنجي ملڪ جو ڪوڊ تصديق ڪريو ۽ پنهنجو ٽيليفون نمبر داخل ڪريو","sr":"Потврдите свој код државе и унесите свој телефонски број","th":"โปรดยืนยันรหัสประเทศของคุณและป้อนหมายเลขโทรศัพท์ของคุณ","tl":"Mangyaring kumpirmahin ang iyong code ng bansa at ipasok ang iyong numero ng telepono","tg":"Лутфан рамзи кишварро тасдиқ кунед ва рақами телефони худро ворид кунед","tk":"Countryurduň koduňyzy tassyklaň we telefon belgiňizi giriziň","tt":"Зинһар, сезнең ил кодыгызны раслагыз һәм телефон номерыгызны кертегез","tr":"Lütfen ülke kodunuzu onaylayın ve telefon numaranızı girin","ug":"دۆلەت كودىڭىزنى جەزملەشتۈرۈڭ ۋە تېلېفون نومۇرىڭىزنى كىرگۈزۈڭ","uz":"Iltimos, mamlakatingizni tasdiqlang va telefon raqamingizni kiriting","vi":"Vui lòng xác nhận mã quốc gia của bạn và nhập số điện thoại của bạn"};

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