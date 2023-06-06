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
      "@type": "TgClientData",
      "id": 0,
      "created_at": "2022-12-26T05:26:40.500935+00:00",
      // "group": [],
      // "private": [],
      "client_user_id": 0,
      "client_token": "",
      "owner_user_id": 0,
      "client_type": "",
      "from_bot_type": null,
      "can_join_groups": false,
      "can_read_all_group_messages": false,
      "from_bot_user_id": 0,
      "expire_date": 0,
      "client_username": "",
      "version": "",
      // "channel": [],
    },
    {
      "@type": "ChatData",
      "id": -1001874491091,
      "title": "asaskak",
      "username": "masmkamskamksmak",
      "first_name": "",
      "last_name": "",
      "is_bot": true,
      "is_auto_read": true,
      "is_auto_clear": true,
      "is_auto_block": false,
      "is_afk": false,
      "is_ai_chatbot": false,
      "is_ai_task": false,
      "is_blocked": false,
      "is_mute": false,
      "ads_gateway_price_day": 10000,
      "ads_gateway_price_pinned": 10000,
      "ads_gateway_price_repeat_msg_day": 10000,
      "ads_gateway_blacklist_word": "",
      "is_ads_gateway": false,
      "ads_gateway_is_require_review": false,
      "ads_gateway_type_content": ["text"],
      "is_subscribe": false,
      "is_start_msg_log": false,
      "is_restrict_log": false,
      "subscribe_expire_date": 0,
      "admins": [
        {
          "user": {
            "id": 5735523822,
            "is_bot": true,
            "first_name": "Azkadev Menfess Telegram Bot",
            "username": "AzkadevMenfessTelegramBot",
          },
          "status": "administrator",
          "can_be_edited": false,
          "can_manage_chat": true,
          "can_change_info": true,
          "can_delete_messages": true,
          "can_invite_users": true,
          "can_restrict_members": true,
          "can_pin_messages": true,
          "can_promote_members": true,
          "can_manage_video_chats": true,
          "is_anonymous": false,
          "can_manage_voice_chats": true
        },
        {
          "user": {
            "id": 5604530106,
            "is_bot": false,
            "first_name": "Kazekage",
            "username": "sadssfsmfm",
            "language_code": "en",
          },
          "status": "creator",
          "is_anonymous": false
        }
      ],
      "state": {
        "chat_id": 121,
        "user_id": 123124,
        "setting": "",
        "message_id": 12141,
        "setup": {
          "id": "setChat",
          "chat_id": 31313131,
        },
        "message_data": "",
        "is_without_delete_msg_me": false,
        "is_delete_msg": false,
        "step": "",
        "version": "",
        "data": {
          "@type": "data",
          "month": 0,
          "token_bot": "",
          "username": "",
          "password": "",
          "token": "",
          "target_user_id": 0,
          "amount": 0,
          "user_id": 0,
          "invoice": {
            "@type": "invoice",
            "id": "6400761f118264bbc49c871b",
            "status": "pending",
            "external_id": "oaksoaks",
            "amount": 50000,
            "title": "HEXAMINATE",
            "profile_picture": {
              "@type": "profilePictureUrl",
              "url":
                  "https://xnd-merchant-logos.s3.amazonaws.com/business/production/610836e3824b6140a513dc38-1648053563560.png"
            },
            "url": "https://checkout.xendit.co/web/6400761f118264bbc49c871b",
          },
        },
      },
    },
  ];

  await jsonToScripts(datas,
      directory: Directory(path.join(Directory.current.path, "lib", "scheme")));
}
