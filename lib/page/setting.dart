import 'package:flutter/material.dart';
import 'package:galaxeus_lib_flutter/galaxeus_lib_flutter.dart';
import 'package:telegram/widget/widget.dart';

class SettingPage extends TelegramStatefulWidget {
  const SettingPage({super.key, required super.appData});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: context.width,
            minHeight: context.height,
          ),
          child: Center(
            child: Text(
              "Slo: ${Navigator.canPop(context)}",
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
