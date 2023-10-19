import 'package:chatapp/data/chat.dart';
import 'package:chatapp/pages/home/tabs/components/chat_widget.dart';
import 'package:chatapp/pages/home/tabs/components/story_list.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../shared/constants/color_constants.dart';

class ChatTab extends StatefulWidget {
  const ChatTab({super.key});

  @override
  State<ChatTab> createState() => _ChatTabState();
}

class _ChatTabState extends State<ChatTab> {
  final chats = getChats();
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: ColorConstants.lightBackgroundColor,
      appBar: AppBar(
        title: const Text(
          "Chat",
          style: TextStyle(
            color: Colors.black,
            fontSize: 26,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            splashRadius: 20,
            onPressed: () {},
            icon: const Icon(Iconsax.search_normal_1),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const StoryList(),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Chats",
                style: theme.textTheme.titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Column(
              children: chats
                  .map(
                    (e) => Column(
                      children: [
                        ChatWidget(chat: e),
                        chats.indexOf(e) != chats.length - 1
                            ? const Divider(
                                indent: 80,
                                height: 1,
                                endIndent: 16,
                              )
                            : const SizedBox(),
                      ],
                    ),
                  )
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}
