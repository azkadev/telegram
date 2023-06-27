import 'package:flutter/material.dart';
import 'package:telegram/app_data/app_data.dart';

abstract class TelegramStatefulWidget extends StatefulWidget {
  final AppData appData;
  const TelegramStatefulWidget({
    super.key,
    required this.appData,
  });
}
