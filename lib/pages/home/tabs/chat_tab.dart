import 'package:flutter/material.dart';
import '../../../shared/constants/color_constants.dart';

class ChatTab extends StatefulWidget {
  const ChatTab({super.key});

  @override
  State<ChatTab> createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  // final chats = getChats();
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: ColorConstants.lightBackgroundColor,
      body: Text("chat"),
    );
  }
}
