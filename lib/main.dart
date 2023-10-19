import 'package:chatapp/pages/call/video/video_call_page.dart';
import 'package:chatapp/pages/home/home_page.dart';
import 'package:chatapp/pages/message_page.dart';
import 'package:chatapp/pages/story/story_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const HomePage(),
    routes: {
      "/message": (context) => const MessagePage(),
      "/story": (context) => const StoryPage(),
      "/video-call": (context) => const VideoCallPage()
    },
  ));
}
