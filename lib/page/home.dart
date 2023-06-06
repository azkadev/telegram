// ignore_for_file: avoid_print

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:galaxeus_lib_flutter/galaxeus_lib_flutter.dart';
import 'package:telegram/widget/widget.dart';
import 'package:iconsax/iconsax.dart';
import 'package:telegram_client/telegram_client.dart';
import "package:galaxeus_lib/galaxeus_lib.dart" as glx_lib;
import 'package:universal_io/io.dart';

enum HomePageScreenType {
  home,

  profile,
}

class HomePage extends TelegramStatefulWidget {
  // final Tdlib tdlib;
  const HomePage({
    super.key,
    required super.appData,
    // required this.tdlib,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late glx_lib.Listener listener;

  bool is_init_listener = false;

  HomePageScreenType homePageScreenType = HomePageScreenType.home;

  bool is_in_main_screen = true;

  @override
  void initState() {
    super.initState();

    onInit();
  }

  FutureOr<dynamic> onUpdate(UpdateTd updateTd) async {
    if (is_in_main_screen) {
      return null;
    }
    // updateTd.raw.printPretty();
    return null;
  }

  void onInit() {
    print("init");
    listener = widget.appData.tg.on(widget.appData.tg.event_update, onUpdate);
    setState(() {
      is_init_listener = true;
    });
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();
  PageController pageController = PageController();

  @override
  void dispose() {
    if (is_init_listener) {
      listener.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: MaterialButton(
          minWidth: 0,
          onPressed: () async {
            if (scaffoldKey.currentState!.isDrawerOpen) {
              // scaffoldKey.currentState!
              scaffoldKey.currentState!.closeDrawer();
            } else {
              scaffoldKey.currentState!.openDrawer();
            }
          },
          child: const Icon(Icons.menu),
        ),
        title: const Text("Telegram Client"),
        actions: [
          MaterialButton(
            minWidth: 0,
            onPressed: () async {
              setState(() {
                is_in_main_screen = false;
              });
              await searchChats(context: context);
            },
            child: const Icon(Icons.search),
          ),
        ],
      ),
      drawer: Drawer(
        width: context.width / 2,
        child: ListView(
          children: [
            ListTile(
              onTap: () {},
              leading: const Icon(
                Icons.people,
                color: Colors.blueGrey,
              ),
              title: const Text(
                'Group Baru',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              onTap: () async {},
              leading: const Icon(
                Icons.contact_phone,
                color: Colors.blueGrey,
              ),
              title: const Text(
                'Kontak',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              onTap: () async {},
              leading: const Icon(
                Icons.call,
                color: Colors.blueGrey,
              ),
              title: const Text(
                'Panggilan',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              onTap: () async {},
              leading: const Icon(
                Icons.people,
                color: Colors.blueGrey,
              ),
              title: const Text(
                'Pengguna Sekitar',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              onTap: () async {},
              leading: const Icon(
                Icons.message,
                color: Colors.blueGrey,
              ),
              title: const Text(
                'Pesan Tersimpan',
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              onTap: () async {},
              leading: const Icon(
                Icons.settings,
                color: Colors.blueGrey,
              ),
              title: const Text(
                'Settings',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      body: PageView.builder(
        controller: pageController,
        itemCount: 5,
        onPageChanged: (value) {
          setState(() {});
        },
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: context.width,
                minHeight: context.height,
              ),
              child: FutureBuilder<Map>(
                future: () async {
                  if (is_in_main_screen == false) {
                    return {"chat_ids": []};
                  }
                  Map res = await widget.appData.tg.invoke(
                    "getChats",
                    parameters: {
                      "limit": 500,
                    },
                  );

                  if (res["@type"] == "chats" && res["total_count"] is int) {
                    int total_count = res["total_count"];
                    if (total_count > 500) {
                      return await widget.appData.tg.invoke(
                        "getChats",
                        parameters: {
                          "limit": total_count,
                        },
                      );
                    }
                    return res;
                  }

                  return {};
                }.call(),
                builder: (context, snapshot) {
                  if (snapshot.data is Map) {
                    Map chats = snapshot.data ?? {};
                    List<int> chat_ids = () {
                      try {
                        return (chats["chat_ids"] as List).cast<int>();
                      } catch (e) {}
                      return [];
                    }.call().whereType<int>().toList();
                    if (chat_ids.isEmpty) {
                      return const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 5,
                            ),
                            child: Text(
                              "Selamat Datang Di Telegram",
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
                              "Mulai obrolan dengan menekan tombol pensil di sudut kanan bawah",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      );
                    }
                    return ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: chat_ids.length,
                      itemBuilder: (context, index) {
                        return FutureBuilder<Map>(
                          future: () async {
                            if (is_in_main_screen == false) {
                              return {};
                            }

                            return widget.appData.tg.invoke(
                              "getChat",
                              parameters: {
                                "chat_id": chat_ids[index],
                              },
                            );
                          }.call(),
                          builder: (context, snapshot) {
                            if (is_in_main_screen == false) {
                              return SizedBox(
                                  height: 50,
                                  width: context.width,
                                  child: const Center(
                                    child: CircularProgressIndicator(),
                                  ));
                            }
                            if (snapshot.data is Map) {
                              Map chat = snapshot.data ?? {};
                              // chat.printPretty();

                              return ListTile(
                                onTap: () async {},
                                leading: FutureBuilder<DecorationImage?>(
                                  future: Future<DecorationImage?>(() async {
                                    if (chat["photo"] is Map) {
                                      Map photo = chat["photo"];
                                      if (photo["small"] is Map) {
                                        if (photo["small"]["local"] is Map && photo["small"]["local"]["path"] is String && (photo["small"]["local"]["path"] as String).isNotEmpty) {
                                          File file = File(photo["small"]["local"]["path"]);
                                          if (file.existsSync()) {
                                            return DecorationImage(
                                              fit: BoxFit.cover,
                                              image: Image.file(file).image,
                                            );
                                          }
                                        }

                                        var res = await widget.appData.tg.invoke(
                                          "downloadFile",
                                          parameters: {
                                            "file_id": photo["small"]["id"],
                                            "priority": 1,
                                            "offset": 0,
                                            "limit": 1,
                                            "synchronous": true,
                                          },
                                        );
                                        res.printPretty();
                                        if (res["local"] is Map && res["local"]["path"] is String && (res["local"]["path"] as String).isNotEmpty) {
                                          File file = File(res["local"]["path"]);
                                          if (file.existsSync()) {
                                            return DecorationImage(
                                              fit: BoxFit.cover,
                                              image: Image.file(file).image,
                                            );
                                          }
                                        }
                                      }

                                      if (photo["minithumbnail"] is Map && photo["minithumbnail"]["data"] is String) {
                                        return DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.memory(
                                            base64Decode(photo["minithumbnail"]["data"]),
                                          ).image,
                                        );
                                      }
                                    }
                                    return null;
                                  }),
                                  initialData: () {
                                    DecorationImage? image;
                                    if (chat["photo"] is Map) {
                                      Map photo = chat["photo"];
                                      if (photo["minithumbnail"] is Map && photo["minithumbnail"]["data"] is String) {
                                        image = DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.memory(
                                            base64Decode(photo["minithumbnail"]["data"]),
                                          ).image,
                                        );
                                      }
                                    }
                                    return image;
                                  }.call(),
                                  builder: (context, snapshot) {
                                    return Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        image: snapshot.data,
                                      ),
                                    );
                                  },
                                ),
                                title: Text(
                                  chat["title"] ?? "",
                                ),
                              );
                            }
                            return SizedBox(
                              height: 50,
                              width: context.width,
                              child: const Center(
                                child: CircularProgressIndicator(),
                              ),
                            );
                          },
                        );
                      },
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Container(
        decoration: const BoxDecoration(
          color: Colors.red,
        ),
        child: const Row(
          children: [Icon(Iconsax.home)],
        ),
      ),
    );
  }

  Future<void> searchChats({
    required BuildContext context,
  }) async {
    await showDialog(
      context: context,
      builder: (context) {
        TextEditingController searchTextEditingController = TextEditingController();

        return StatefulBuilder(
          builder: (context, setStat) {
            print("slebew: ${is_in_main_screen}");
            return Scaffold(
              appBar: AppBar(
                leading: MaterialButton(
                  minWidth: 0,
                  onPressed: () async {
                    if (context.navigator().canPop()) {
                      is_in_main_screen = true;
                      setState(() {});
                      context.navigator().pop();
                    }
                  },
                  child: const Icon(Icons.arrow_back),
                ),
                title: TextFormField(
                  cursorColor: Colors.black,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  readOnly: false,
                  enabled: true,
                  // initialValue: languageDetailData.name,
                  controller: searchTextEditingController,
                  onChanged: (String value) async {},
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    hintText: "Search",
                    // suffixIcon: MaterialButton(
                    //   onPressed: () {
                    //     setStat(() {
                    //       searchTextEditingController.clear();
                    //       // languageCodeDetailDatas = languageCodeDetailData.entries.toList();
                    //     });
                    //   },
                    //   child: Icon(Icons.close),
                    // ),
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
                    hintStyle: TextStyle(
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
                    floatingLabelStyle: TextStyle(
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
                actions: [
                  MaterialButton(
                    minWidth: 0,
                    onPressed: () async {
                      setStat(() {});
                    },
                    child: const RotatedBox(quarterTurns: 2, child: Icon(Icons.arrow_back_ios_new)),
                  ),
                ],
              ),
              body: FutureBuilder<Map>(
                future: () async {
                  if (is_in_main_screen) {
                    return {};
                  }
                  if (searchTextEditingController.text.isNotEmpty) {
                    Map chats = await widget.appData.tg.invoke(
                      "searchPublicChats",
                      parameters: {
                        "query": searchTextEditingController.text,
                      },
                    );

                    return chats;
                  }
                  return {};
                }.call(),
                builder: (context, snapshot) {
                  if (snapshot.data is Map && is_in_main_screen == false) {
                    Map chats = snapshot.data ?? {};
                    List<int> chat_ids = () {
                      try {
                        return (chats["chat_ids"] as List).cast<int>();
                      } catch (e) {}
                      return [];
                    }.call().whereType<int>().toList();
                    return ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: chat_ids.length,
                      itemBuilder: (context, index) {
                        return FutureBuilder<Map>(
                          future: () async {
                            if (is_in_main_screen) {
                              return {};
                            }

                            return widget.appData.tg.invoke(
                              "getChat",
                              parameters: {
                                "chat_id": chat_ids[index],
                              },
                            );
                          }.call(),
                          builder: (context, snapshot) {
                            if (is_in_main_screen) {
                              return SizedBox(
                                height: 50,
                                width: context.width,
                                child: const Center(
                                  child: CircularProgressIndicator(),
                                ),
                              );
                            }
                            if (snapshot.data is Map) {
                              Map chat = snapshot.data ?? {};

                              return ListTile(
                                onTap: () async {},
                                leading: FutureBuilder<DecorationImage?>(
                                  future: Future<DecorationImage?>(() async {
                                    if (chat["photo"] is Map) {
                                      Map photo = chat["photo"];
                                      if (photo["small"] is Map) {
                                        if (photo["small"]["local"] is Map && photo["small"]["local"]["path"] is String && (photo["small"]["local"]["path"] as String).isNotEmpty) {
                                          File file = File(photo["small"]["local"]["path"]);
                                          if (file.existsSync()) {
                                            return DecorationImage(
                                              fit: BoxFit.cover,
                                              image: Image.file(file).image,
                                            );
                                          }
                                        }
                                        var res = await widget.appData.tg.invoke(
                                          "downloadFile",
                                          parameters: {
                                            "file_id": photo["small"]["id"],
                                            "priority": 1,
                                            "offset": 0,
                                            "limit": 1,
                                            "synchronous": true,
                                          },
                                        );
                                        if (res["local"] is Map && res["local"]["path"] is String && (res["local"]["path"] as String).isNotEmpty) {
                                          File file = File(res["local"]["path"]);
                                          if (file.existsSync()) {
                                            return DecorationImage(
                                              fit: BoxFit.cover,
                                              image: Image.file(file).image,
                                            );
                                          }
                                        }
                                      }

                                      if (photo["minithumbnail"] is Map && photo["minithumbnail"]["data"] is String) {
                                        return DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.memory(
                                            base64Decode(photo["minithumbnail"]["data"]),
                                          ).image,
                                        );
                                      }
                                    }
                                    return null;
                                  }),
                                  initialData: () {
                                    DecorationImage? image;
                                    if (chat["photo"] is Map) {
                                      Map photo = chat["photo"];
                                      if (photo["minithumbnail"] is Map && photo["minithumbnail"]["data"] is String) {
                                        image = DecorationImage(
                                          fit: BoxFit.cover,
                                          image: Image.memory(
                                            base64Decode(photo["minithumbnail"]["data"]),
                                          ).image,
                                        );
                                      }
                                    }
                                    return image;
                                  }.call(),
                                  builder: (context, snapshot) {
                                    return Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        image: snapshot.data,
                                      ),
                                    );
                                  },
                                ),
                                title: Text(
                                  chat["title"] ?? "",
                                ),
                              );
                            }
                            return SizedBox(
                              height: 50,
                              width: context.width,
                              child: const Center(
                                child: CircularProgressIndicator(),
                              ),
                            );
                          },
                        );
                      },
                    );
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
            );
          },
        );
      },
    );
  }
}
