// ignore_for_file: constant_identifier_names, prefer_const_constructors, use_build_context_synchronously

import "dart:convert";

import "package:telegram/core/core.dart";

import "package:telegram/page/page.dart";
import "package:cool_alert/cool_alert.dart";
import 'package:flutter/material.dart';
import "package:galaxeus_lib/galaxeus_lib.dart";

// import "package:galaxeus_lib/galaxeus_lib.dart";
import "package:galaxeus_lib_flutter/galaxeus_lib_flutter.dart";
import "package:telegram_client/telegram_client.dart";
import "package:path/path.dart" as path;

enum SignPageWaitType {
  phone_number,
  code,
  password,
  secret_word,
  code_sign_in,
  code_sign_up,
  password_sign_in,
  password_sign_up,
  secret_word_sign_up,
  registration,
}

class SignPage extends StatefulWidget {
  final Tdlib tdlib;
  const SignPage({
    super.key,
    required this.tdlib,
  });

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> with TickerProviderStateMixin {
  final List<String> sign_tabs = [
    "Sign",
    "Sign With Qr",
    "Sign Token Bot",
    "Sign With File",
  ];
  late TabController signTabController = TabController(
    length: sign_tabs.length,
    vsync: this,
  );
  final List<String> verify_tabs = [
    "Secret Word",
    "Payment",
    "Face",
  ];
  late TabController verifyTabController = TabController(
    length: verify_tabs.length,
    vsync: this,
  );

  TextEditingController first_name_text_editing_controller =
      TextEditingController();
  TextEditingController last_name_text_editing_controller =
      TextEditingController();
  TextEditingController textEditingController = TextEditingController();
  TextEditingController reasonEditingController = TextEditingController();
  TextEditingController keyEditingController = TextEditingController();

  bool is_obscure_text = true;
  SignPageWaitType signPageWaitType = SignPageWaitType.phone_number;
  List<int> code = [];
  bool is_procces = false;
  bool get is_test_dc {
    try {
      return widget.tdlib.client_option["use_test_dc"] as bool;
    } catch (e) {}
    return false;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: context.width,
            minHeight: context.height,
          ),
          child: autoPageSignBody(),
        ),
      ),
      floatingActionButton: Visibility(
          visible: (signPageWaitType == SignPageWaitType.phone_number),
          child: FloatingActionButton(
            onPressed: () async {
              ValidationData validationData = validation(
                  data: textEditingController.text,
                  validationDataType: ValidationDataType.phone_number);
              if (validationData.message != null) {
                //
                await CoolAlert.show(
                  context: context,
                  type: CoolAlertType.info,
                  title: "Phone Number",
                  text: validationData.message,
                );
                return;
              }

              if (is_procces) {
                return;
              }
              if (is_procces) {
                return;
              }
              print(widget.tdlib.client_id);
              print(widget.tdlib.client_id == 94539460370112);
              print(widget.tdlib.messageTdlibToApi(94539460370112));
              print(widget.tdlib.messageTdlibToApi(widget.tdlib.client_id));
              setState(() {
                is_procces = true;
              });
              Future(() async {
                while (true) {
                  if (is_procces == false) {
                    break;
                  }
                  await Future.delayed(Duration(milliseconds: 1));
                  Map res = await widget.tdlib.invoke(
                    "getAuthorizationState",
                    isInvokeThrowOnError: false,
                  );
                  res.printPretty();
                  if (res["@type"] == "authorizationStateWaitTdlibParameters") {
                    var p = await widget.tdlib.invoke(
                      "setTdlibParameters",
                      parameters: {
                        ...widget.tdlib.client_option,
                      },
                      isInvokeThrowOnError: false,
                    );

                    p.printPretty();
                    if (p["@type"] == "error") {
                      if (RegExp(
                              r"(because it is already in use by current program)",
                              caseSensitive: false)
                          .hashData(p["message"])) {
                        widget.tdlib.client_option["database_directory"] =
                            path.join(
                                widget
                                    .tdlib.client_option["database_directory"],
                                "data_${DateTime.now().millisecondsSinceEpoch}");
                        continue;
                      }
                      break;
                    }
                  } else if (res["@type"] ==
                      "authorizationStateWaitEncryptionKey") {
                    bool isEncrypted =
                        res["authorization_state"]['is_encrypted'];
                    if (isEncrypted) {
                      var p = await widget.tdlib.invoke(
                        "checkDatabaseEncryptionKey",
                        parameters: {
                          "encryption_key": base64.encode(utf8.encode(
                              widget.tdlib.client_option["database_key"]))
                        },
                        isInvokeThrowOnError: false,
                      );

                      p.printPretty();
                      if (p["@type"] == "error") {
                        break;
                      }
                    } else {
                      var p = await widget.tdlib.invoke(
                        "setDatabaseEncryptionKey",
                        parameters: {
                          "new_encryption_key": base64.encode(utf8.encode(
                              widget.tdlib.client_option["database_key"]))
                        },
                        isInvokeThrowOnError: false,
                      );

                      p.printPretty();
                      if (p["@type"] == "error") {
                        break;
                      }
                    }
                  } else if (res["@type"] ==
                      "authorizationStateWaitPhoneNumber") {
                    if (textEditingController.text.isEmpty) {
                      break;
                    }
                    var code = await widget.tdlib.invoke(
                      "setAuthenticationPhoneNumber",
                      parameters: {
                        "phone_number": textEditingController.text.replaceAll(
                            RegExp(r"((\+)| )", caseSensitive: false), ""),
                      },
                      isInvokeThrowOnError: false,
                    );
                    code.printPretty();

                    if (code["@type"] == "error") {
                      break;
                    }
                  } else if (res["@type"] == "authorizationStateWaitCode") {
                    setState(() {
                      is_procces = false;
                      signPageWaitType = SignPageWaitType.code;
                    });
                    break;
                  } else if (res["@type"] == "error") {
                    setState(() {
                      is_procces = false;
                    });
                    break;
                  } else {
                    setState(() {
                      is_procces = false;
                    });
                    break;
                  }
                }
              });
            },
            child: RotatedBox(
              quarterTurns: 2,
              child: Icon(Icons.arrow_back),
            ),
          )),
    );
  }

  Widget autoPageSignBody() {
    if (signPageWaitType == SignPageWaitType.code) {
      return codePageSignBody();
    }
    if (signPageWaitType == SignPageWaitType.password) {
      return passwordPageSignBody();
    }
    if (signPageWaitType == SignPageWaitType.registration) {
      return registrationSignBody();
    }
    return pageSignBody();
  }

  Widget registrationSignBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 15,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  child: Text(
                    "Registration",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  child: Text(
                    "Setelah Berhasil regisatrion\nTolong gunakan App Ini dengan bijak ya",
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 5,
                ),
                child: codeFormField(
                  labelText: "First Name",
                  hintText: "name",
                  controller: first_name_text_editing_controller,
                  onChanged: (String data) {
                    setState(() {});
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 5,
                ),
                child: codeFormField(
                  labelText: "Last Name",
                  hintText: "name",
                  controller: last_name_text_editing_controller,
                  onChanged: (String data) {
                    setState(() {});
                  },
                ),
              ),
              signButton(
                width: context.width,
                text: "Registration",
                margin: const EdgeInsets.all(20),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                onPressed: () async {
                  ValidationData validationData = validation(
                      data: first_name_text_editing_controller.text,
                      validationDataType: ValidationDataType.first_name);
                  if (validationData.message != null) {
                    //
                    await CoolAlert.show(
                      context: context,
                      type: CoolAlertType.info,
                      title: "First Name",
                      text: validationData.message,
                    );
                    return;
                  }

                  if (is_procces) {
                    return;
                  }
                  setState(() {
                    is_procces = true;
                  });
                  Future(() async {
                    while (true) {
                      if (is_procces == false) {
                        break;
                      }
                      await Future.delayed(Duration(milliseconds: 1));
                      Map res = await widget.tdlib.invoke(
                        "getAuthorizationState",
                        isInvokeThrowOnError: false,
                      );
                      res.printPretty();
                      if (res["@type"] ==
                          "authorizationStateWaitRegistration") {
                        var p = await widget.tdlib.invoke(
                          "registerUser",
                          parameters: {
                            "first_name":
                                first_name_text_editing_controller.text,
                            "last_name":
                                first_name_text_editing_controller.text,
                          },
                          isInvokeThrowOnError: false,
                        );
                        if (p["@type"] == "error") {
                          setState(() {
                            is_procces = false;
                          });
                          break;
                        }
                        setState(() {
                          is_procces = false;
                          signPageWaitType = SignPageWaitType.registration;
                        });
                        break;
                      } else if (res["@type"] == "error") {
                        setState(() {
                          is_procces = false;
                        });

                        break;
                      } else if (res["@type"] == "authorizationStateReady") {
                        context.navigator().pushReplacement(
                          MaterialPageRoute(
                            builder: (context) {
                              return HomePage(
                                tdlib: widget.tdlib,
                              );
                            },
                          ),
                        );
                        setState(() {
                          is_procces = false;
                        });
                        break;
                      } else {
                        setState(() {
                          is_procces = false;
                        });
                        break;
                      }
                    }
                  });
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget passwordPageSignBody() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  signPageWaitType = SignPageWaitType.phone_number;
                });
              },
              child: const Icon(Icons.arrow_back),
            ),
            const Text(
              "Telegram",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            InkWell(
              onTap: () {},
              child: const RotatedBox(
                quarterTurns: 1,
                child: Icon(Icons.more_horiz_outlined),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 100,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                child: codeFormField(
                  labelText: "Two Password",
                  hintText: "Password 1235",
                  controller: textEditingController,
                  onChanged: (String data) {},
                ),
              ),
              signButton(
                width: context.width,
                text: "Send Password",
                margin: const EdgeInsets.all(20),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                onPressed: () async {
                  ValidationData validationData = validation(
                      data: textEditingController.text,
                      validationDataType: ValidationDataType.password);
                  if (validationData.message != null) {
                    //
                    await CoolAlert.show(
                      context: context,
                      type: CoolAlertType.info,
                      title: "Password",
                      text: validationData.message,
                    );
                    return;
                  }
                  setState(() {
                    textEditingController.clear();
                  });
                  await Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) {
                      return HomePage(
                        tdlib: widget.tdlib,
                      );
                    },
                  ));
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget codePageSignBody() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  signPageWaitType = SignPageWaitType.phone_number;
                });
              },
              child: const Icon(Icons.arrow_back),
            ),
            const Text(
              "Telegram",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            InkWell(
              onTap: () {},
              child: const RotatedBox(
                quarterTurns: 1,
                child: Icon(Icons.more_horiz_outlined),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 100,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                child: codeFormField(
                  labelText: "Code",
                  hintText: "12345",
                  controller: textEditingController,
                  onChanged: (String data) {
                    setState(() {});
                  },
                ),
              ),
              signButton(
                width: context.width,
                text: "Send Code",
                margin: const EdgeInsets.all(20),
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                onPressed: () async {
                  ValidationData validationData = validation(
                      data: textEditingController.text,
                      validationDataType: ValidationDataType.code);
                  if (validationData.message != null) {
                    //
                    await CoolAlert.show(
                      context: context,
                      type: CoolAlertType.info,
                      title: "Code",
                      text: validationData.message,
                    );
                    return;
                  }

                  if (is_procces) {
                    return;
                  }
                  setState(() {
                    is_procces = true;
                  });
                  Future(() async {
                    while (true) {
                      if (is_procces == false) {
                        break;
                      }
                      await Future.delayed(Duration(milliseconds: 1));
                      Map res = await widget.tdlib.invoke(
                        "getAuthorizationState",
                        isInvokeThrowOnError: false,
                      );
                      res.printPretty();
                      if (res["@type"] == "authorizationStateWaitCode") {
                        var code = await widget.tdlib.invoke(
                          "checkAuthenticationCode",
                          parameters: {
                            "code": textEditingController.text,
                          },
                          isInvokeThrowOnError: false,
                        );

                        code.printPretty();
                        if (code["@type"] == "error") {
                          if (code["message"] == "PHONE_CODE_EXPIRED") {
                            signPageWaitType = SignPageWaitType.phone_number;
                          }
                          await CoolAlert.show(
                            context: context,
                            type: CoolAlertType.info,
                            title: "Code",
                            text: "Error Code\n\n${code["message"]}",
                          );

                          setState(() {
                            is_procces = false;
                            textEditingController.clear();
                          });
                          break;
                        }
                        setState(() {
                          textEditingController.clear();
                        });
                      } else if (res["@type"] ==
                          "authorizationStateWaitRegistration") {
                        setState(() {
                          is_procces = false;
                          signPageWaitType = SignPageWaitType.registration;
                        });
                        break;
                      } else if (res["@type"] == "authorizationStateReady") {
                        context.navigator().pushReplacement(
                          MaterialPageRoute(
                            builder: (context) {
                              return HomePage(
                                tdlib: widget.tdlib,
                              );
                            },
                          ),
                        );
                        setState(() {
                          is_procces = false;
                        });
                        break;
                      } else if (res["@type"] == "error") {
                        setState(() {
                          is_procces = false;
                        });
                        break;
                      } else {
                        setState(() {
                          is_procces = false;
                        });
                        break;
                      }
                    }
                  });
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget codeFormField({
    String? hintText,
    String? labelText,
    Color color = Colors.white,
    TextEditingController? controller,
    String? Function(String? data)? validator,
    bool isEnable = true,
    void Function()? onPressed,
    void Function(String String)? onChanged,
  }) {
    return TextField(
      controller: controller,
      cursorColor: Colors.black,
      style: const TextStyle(
        color: Colors.black,
      ),
      textAlign: TextAlign.center,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        contentPadding: const EdgeInsets.all(20),
        labelStyle: const TextStyle(
          color: Colors.black,
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
        ),
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 14.0,
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade200,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade200,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        floatingLabelStyle: const TextStyle(
          color: Colors.black,
          fontSize: 18.0,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade200,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade200,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 0, 0, 0),
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }

  Widget pageSignBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 15,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  child: Text(
                    "Nomor Telepon Anda",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  child: Text(
                    "Mohon konfirmasi kode negara dan\nmasukan nomor telepon anda",
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
        autoBody(),
      ],
    );
  }

  Widget autoBody() {
    if (signTabController.index == 1) {
      return verifyBody();
    }
    if (signTabController.index == 2) {
      return signBotBody();
    }
    return signBody();
  }

  Widget signBody() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      // mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          child: Builder(
            builder: (context) {
              LanguageDetailData languageDetailData =
                  languageCodeDetailData.languageDetailDataQueryForceSync(
                onData: (languageDetailData) {
                  try {
                    if (languageDetailData.dial_code is String &&
                        languageDetailData.dial_code!.isNotEmpty) {
                      if (RegExp(
                              "^(${languageDetailData.dial_code!.replaceAll("+", "")})",
                              caseSensitive: false)
                          .hashData(textEditingController.text
                              .replaceAll(RegExp(r"(\+| )"), ""))) {
                        return true;
                      }
                    }
                  } catch (e) {}
                  return false;
                },
                defaultLanguageDetailData: LanguageDetailData.create(
                    special_type: "",
                    name: "Unknown",
                    flag: "-",
                    code: "-",
                    dial_code: "unknown"),
              );
              return TextFormField(
                cursorColor: Colors.black,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                readOnly: true,
                enabled: true,
                // initialValue: languageDetailData.name,
                controller:
                    TextEditingController(text: languageDetailData.name),
                onTap: () async {
                  await showCountryList(context: context);
                },
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(0.0),
                  hintText: languageDetailData.name,
                  labelText: "Negara",
                  labelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                  ),
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,
                  ),
                  prefixIconConstraints:
                      BoxConstraints(minWidth: 18, minHeight: 18),
                  prefixIcon: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          languageDetailData.flag ?? "",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  suffixIcon: MaterialButton(
                      minWidth: 0,
                      clipBehavior: Clip.antiAlias,
                      onPressed: () async {
                        await showCountryList(context: context);
                      },
                      child: RotatedBox(
                        quarterTurns: 2,
                        child: Icon(
                          Icons.arrow_back_ios_new,
                        ),
                      )),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade200,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade200,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  floatingLabelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade200,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade200,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.shade200,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  // focusedBorder: OutlineInputBorder(
                  //   borderSide: const BorderSide(
                  //     color: Color.fromARGB(255, 0, 0, 0),
                  //     width: 1.5,
                  //   ),
                  //   borderRadius: BorderRadius.circular(15.0),
                  // ),
                ),
              );
            },
          ),
        ),

        phoneNumberForm(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.symmetric(vertical: 20),
        //   child: signButton(
        //     text: "Sign In",
        //     width: context.width,
        //     margin: const EdgeInsets.all(
        //       10,
        //     ),
        //     borderRadius: const BorderRadius.all(
        //       Radius.circular(10),
        //     ),
        //     onPressed: () async {
        //       ValidationData validationData = validation(
        //         data: textEditingController.text,
        //         validationDataType: ValidationDataType.phone_number,
        //       );
        //       if (validationData.message != null) {
        //         //
        //         await CoolAlert.show(
        //           context: context,
        //           type: CoolAlertType.info,
        //           title: "Phone Number",
        //           text: validationData.message,
        //         );
        //         return;
        //       }

        //       setState(() {
        //         textEditingController.clear();
        //         keyEditingController.clear();
        //         signPageWaitType = SignPageWaitType.code;
        //       });
        //     },
        //   ),
        // ),
      ],
    );
  }

  Future<void> showCountryList({
    required BuildContext context,
  }) async {
    List<MapEntry<String, LanguageDetailData>> languageCodeDetailDatas =
        languageCodeDetailData.entries.toList();

    await showDialog(
      context: context,
      builder: (context) {
        TextEditingController searchTextEditingController =
            TextEditingController();
        bool is_show_search = false;
        return StatefulBuilder(
          builder: (context, setStat) {
            return Scaffold(
              appBar: AppBar(
                leading: MaterialButton(
                  minWidth: 0,
                  onPressed: () async {
                    if (context.navigator().canPop()) {
                      context.navigator().pop();
                    }
                  },
                  child: Icon(Icons.arrow_back),
                ),
                title: Visibility(
                  visible: is_show_search,
                  replacement: Text("Pilih negara"),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    readOnly: false,
                    enabled: true,
                    // initialValue: languageDetailData.name,
                    controller: searchTextEditingController,
                    onChanged: (String value) async {
                      Future(() {
                        setStat(
                          () {
                            languageCodeDetailDatas = languageCodeDetailData
                                .entries
                                .toList()
                                .map((e) {
                                  try {
                                    if (RegExp(value, caseSensitive: false)
                                        .hashData(e.value.name)) {
                                      return e;
                                    }
                                  } catch (e) {}
                                  return null;
                                })
                                .whereType<
                                    MapEntry<String, LanguageDetailData>>()
                                .toList();
                          },
                        );
                      });
                    },
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10.0),
                      hintText: "Search",
                      suffixIcon: MaterialButton(
                        onPressed: () {
                          setStat(() {
                            searchTextEditingController.clear();
                            languageCodeDetailDatas =
                                languageCodeDetailData.entries.toList();
                          });
                        },
                        child: Icon(Icons.close),
                      ),
                      labelStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14.0,
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(0, 0, 0, 0),
                          width: 0,
                        ),
                        // borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(0, 0, 0, 0),
                          width: 0,
                        ),
                        // borderRadius: BorderRadius.circular(10.0),
                      ),
                      floatingLabelStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(0, 0, 0, 0),
                          width: 0,
                        ),
                        // borderRadius: BorderRadius.circular(15.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(0, 0, 0, 0),
                          width: 0,
                        ),
                        // borderRadius: BorderRadius.circular(15.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(0, 0, 0, 0),
                          width: 0,
                        ),
                        // borderRadius: BorderRadius.circular(10.0),
                      ),
                      // focusedBorder: OutlineInputBorder(
                      //   borderSide: const BorderSide(
                      //     color: Color.fromARGB(255, 0, 0, 0),
                      //     width: 1.5,
                      //   ),
                      //   borderRadius: BorderRadius.circular(15.0),
                      // ),
                    ),
                  ),
                ),
                actions: [
                  Visibility(
                      visible: (is_show_search == false),
                      child: MaterialButton(
                        minWidth: 0,
                        onPressed: () async {
                          setStat(() {
                            is_show_search = (!is_show_search);
                          });
                        },
                        child: Icon(Icons.search),
                      )),
                ],
              ),
              body: ListView.builder(
                itemCount: languageCodeDetailDatas.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      if (context.navigator().canPop()) {
                        if (languageCodeDetailDatas[index].value.dial_code
                            is String) {
                          setState(() {
                            textEditingController.text =
                                (languageCodeDetailDatas[index]
                                            .value
                                            .dial_code ??
                                        "")
                                    .replaceAll("+", "");
                          });
                        }
                        context.navigator().pop();
                      }
                    },
                    leading: Text(
                      languageCodeDetailDatas[index].value.flag ?? "",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    title: Text(
                      languageCodeDetailDatas[index].value.name ?? "",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    trailing: Text(
                      languageCodeDetailDatas[index].value.dial_code ?? "",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }

  Widget verifyBody() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        usernameForm(
          readOnly: true,
        ),
        passwordForm(
          readOnly: true,
        ),
        TabBar(
          indicatorColor: const Color.fromARGB(255, 255, 14, 14),
          controller: verifyTabController,
          isScrollable: true,
          indicator: BoxDecoration(
            color: const Color.fromARGB(255, 252, 252, 252),
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(49, 0, 0, 0),
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          padding: const EdgeInsets.all(15),
          labelPadding: const EdgeInsets.all(15),
          splashBorderRadius: BorderRadius.circular(15),
          unselectedLabelColor: Colors.grey,
          onTap: (value) {
            setState(() {});
          },
          tabs: verify_tabs.map<Widget>((e) {
            return Text(
              e,
              style: const TextStyle(
                color: Colors.black,
              ),
            );
          }).toList(),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: signButton(
            width: context.width,
            text: "Verify",
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            onPressed: () async {
              ValidationData validationDataPassword = validation(
                  data: keyEditingController.text,
                  validationDataType: ValidationDataType.password);

              ValidationData validationData = validation(
                  data: textEditingController.text,
                  validationDataType: ValidationDataType.username);

              if (validationData.message != null) {
                //
                await CoolAlert.show(
                  context: context,
                  type: CoolAlertType.info,
                  title: "Username",
                  text: validationData.message,
                );
                return;
              }
              if (validationDataPassword.message != null) {
                //
                await CoolAlert.show(
                  context: context,
                  type: CoolAlertType.info,
                  title: "Password",
                  text: validationDataPassword.message,
                );
                return;
              }
            },
          ),
        ),
      ],
    );
  }

  Widget signBotBody() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        tokenBotForm(),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
          ),
          child: signButton(
            width: context.width,
            text: "Login Account Bot",
            margin: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
            onPressed: () async {
              ValidationData validationData = validation(
                data: textEditingController.text,
                validationDataType: ValidationDataType.token_bot,
              );
              if (validationData.message != null) {
                ///
                await CoolAlert.show(
                  context: context,
                  type: CoolAlertType.info,
                  title: "Token",
                  text: validationData.message,
                );
                return;
              }
              setState(() {
                textEditingController.clear();
                reasonEditingController.clear();
                signPageWaitType = SignPageWaitType.code;
              });
            },
          ),
        ),
      ],
    );
  }

  Widget signInAndSignUpButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: signButton(
            text: "Sign In",
            margin: const EdgeInsets.only(
              left: 10,
            ),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(
                20,
              ),
              bottomLeft: Radius.circular(
                20,
              ),
            ),
            onPressed: () async {
              ValidationData validationDataPassword = validation(
                  data: keyEditingController.text,
                  validationDataType: ValidationDataType.password);

              ValidationData validationData = validation(
                  data: textEditingController.text,
                  validationDataType: ValidationDataType.username);
              if (validationData.message != null) {
                //
                await CoolAlert.show(
                  context: context,
                  type: CoolAlertType.info,
                  title: "Username",
                  text: validationData.message,
                );
                return;
              }

              if (validationDataPassword.message != null) {
                //
                await CoolAlert.show(
                  context: context,
                  type: CoolAlertType.info,
                  title: "Password",
                  text: validationDataPassword.message,
                );
                return;
              }

              setState(() {
                textEditingController.clear();
                keyEditingController.clear();
                signPageWaitType = SignPageWaitType.code;
              });
            },
          ),
        ),
        Expanded(
          child: signButton(
            text: "Sign Up",
            margin: const EdgeInsets.only(
              right: 10,
            ),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(
                20,
              ),
              bottomRight: Radius.circular(
                20,
              ),
            ),
            onPressed: () async {
              ValidationData validationDataPassword = validation(
                  data: keyEditingController.text,
                  validationDataType: ValidationDataType.password);

              ValidationData validationData = validation(
                  data: textEditingController.text,
                  validationDataType: ValidationDataType.username);

              if (validationData.message != null) {
                //
                await CoolAlert.show(
                  context: context,
                  type: CoolAlertType.info,
                  title: "Username",
                  text: validationData.message,
                );
                return;
              }
              if (validationDataPassword.message != null) {
                //
                await CoolAlert.show(
                  context: context,
                  type: CoolAlertType.info,
                  title: "Password",
                  text: validationDataPassword.message,
                );
                return;
              }
            },
          ),
        ),
      ],
    );
  }

  Widget phoneNumberForm({
    EdgeInsets padding = const EdgeInsets.all(10),
    bool readOnly = false,
  }) {
    return Padding(
      padding: padding,
      child: textFormField(
        hintText: "628515678",
        labelText: "Phone Number",
        controller: textEditingController,
        prefixIconData: Icons.phone,
        readOnly: readOnly,
        validator: (String? data) {
          ValidationData validationData = validation(
              data: data, validationDataType: ValidationDataType.phone_number);
          return validationData.message;
        },
      ),
    );
  }

  Widget tokenBotForm({
    bool readOnly = false,
  }) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: textFormField(
        hintText: "0123456789:abcdegjikasplewrmkfpo",
        labelText: "Token Bot Dari @botfather",
        controller: textEditingController,
        readOnly: readOnly,
        validator: (String? data) {
          ValidationData validationData = validation(
            data: data,
            validationDataType: ValidationDataType.token_bot,
          );
          return validationData.message;
        },
      ),
    );
  }

  Widget usernameForm({
    bool readOnly = false,
  }) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: textFormField(
        hintText: "username huruf saja",
        labelText: "Username",
        controller: textEditingController,
        readOnly: readOnly,
        validator: (String? data) {
          ValidationData validationData = validation(
              data: data, validationDataType: ValidationDataType.username);
          return validationData.message;
        },
      ),
    );
  }

  Widget reasonForm() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: reasonFormField(
        hintText: "",
        labelText: "Reason",
        controller: reasonEditingController,
        validator: (String? data) {
          ValidationData validationDataReason = validation(
            data: reasonEditingController.text,
            validationDataType: ValidationDataType.reason,
          );

          return validationDataReason.message;
        },
      ),
    );
  }

  Widget passwordForm({bool readOnly = false}) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: keyFormField(
        hintText: "password kamu",
        labelText: "Password",
        is_obscure_text: is_obscure_text,
        controller: keyEditingController,
        readOnly: readOnly,
        validator: (String? data) {
          ValidationData validationData = validation(
              data: data, validationDataType: ValidationDataType.password);
          return validationData.message;
        },
        onPressed: () {
          setState(() {
            is_obscure_text = !is_obscure_text;
          });
        },
      ),
    );
  }

  Widget signButton({
    double? width,
    required EdgeInsets margin,
    required BorderRadius borderRadius,
    required String text,
    required void Function()? onPressed,
  }) {
    return Container(
      width: width,
      height: 50,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        border: Border.all(
          color: Colors.blue,
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          text,
        ),
      ),
    );
  }

  Widget reasonFormField({
    String? hintText,
    String? labelText,
    Color color = Colors.white,
    TextEditingController? controller,
    String? Function(String? data)? validator,
  }) {
    return TextFormField(
      cursorColor: Colors.black,
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      style: const TextStyle(
        color: Colors.black,
      ),
      maxLines: 4,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(
          10,
        ),
        hintText: hintText,
        labelText: labelText,
        labelStyle: const TextStyle(
          color: Colors.black,
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
        ),
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 14.0,
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade200,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade200,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        floatingLabelStyle: const TextStyle(
          color: Colors.black,
          fontSize: 18.0,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade200,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade200,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 0, 0, 0),
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }

  Widget textFormField({
    String? hintText,
    String? labelText,
    IconData prefixIconData = Icons.people,
    Color color = Colors.white,
    TextEditingController? controller,
    String? Function(String? data)? validator,
    bool readOnly = false,
  }) {
    return TextFormField(
      cursorColor: Colors.black,
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      readOnly: readOnly,
      style: const TextStyle(
        color: Colors.black,
      ),
      onChanged: (value) {
        setState(() {});
      },
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(0.0),
        hintText: hintText,
        labelText: labelText,
        labelStyle: const TextStyle(
          color: Colors.black,
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
        ),
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 14.0,
        ),
        prefixIcon: Icon(
          prefixIconData,
          color: Colors.black,
          size: 18,
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade200,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade200,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        floatingLabelStyle: const TextStyle(
          color: Colors.black,
          fontSize: 18.0,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade200,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade200,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 0, 0, 0),
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }

  Widget keyFormField({
    String? hintText,
    String? labelText,
    Color color = Colors.white,
    TextEditingController? controller,
    String? Function(String? data)? validator,
    bool is_obscure_text = true,
    bool readOnly = false,
    void Function()? onPressed,
  }) {
    return TextFormField(
      cursorColor: Colors.black,
      readOnly: readOnly,
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      style: const TextStyle(
        color: Colors.black,
      ),
      obscureText: is_obscure_text,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(0.0),
        hintText: hintText,
        labelText: labelText,
        labelStyle: const TextStyle(
          color: Colors.black,
          fontSize: 14.0,
          fontWeight: FontWeight.w400,
        ),
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 14.0,
        ),
        suffixIcon: InkWell(
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: onPressed,
          borderRadius: BorderRadius.circular(10),
          child: const Icon(
            Icons.remove_red_eye,
            color: Colors.black,
            size: 18,
          ),
        ),
        prefixIcon: const Icon(
          Icons.key,
          color: Colors.black,
          size: 18,
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade200,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade200,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        floatingLabelStyle: const TextStyle(
          color: Colors.black,
          fontSize: 18.0,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade200,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade200,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 0, 0, 0),
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
