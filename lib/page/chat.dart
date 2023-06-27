import 'package:flutter/material.dart';
import 'package:galaxeus_lib_flutter/galaxeus_lib_flutter.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
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
