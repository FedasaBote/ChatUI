import 'package:chatapp/pages/home/tabs/chat_tab.dart';
import 'package:chatapp/pages/home/tabs/explore_tab.dart';
import 'package:chatapp/pages/home/tabs/notification_tab.dart';
import 'package:chatapp/pages/home/tabs/user_tab.dart';
import 'package:chatapp/shared/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final tabs = <Widget>[
    const ExploreTab(),
    const ChatTab(),
    const NotificationTab(),
    const UserTab(),
  ];
  late PageController _pageController;
  int currentTab = 1;

  goToTab(int page) {
    setState(() {
      currentTab = page;
    });
    _pageController.jumpToPage(page);
  }

  @override
  void initState() {
    _pageController = PageController(initialPage: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: tabs,
      ),
      bottomNavigationBar: BottomAppBar(
        color: ColorConstants.lightBackgroundColor,
        elevation: 0,
        notchMargin: 100,
        child: Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _bottomAppBarItem(icon: Iconsax.home5, page: 0),
              _bottomAppBarItem(icon: Iconsax.message5, page: 1),
              _bottomAppBarItem(icon: Iconsax.notification5, page: 2),
              _bottomAppBarItem(icon: Iconsax.category5, page: 3),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomAppBarItem({icon, page}) {
    return IconButton(
      splashRadius: 20,
      onPressed: () => goToTab(page),
      icon: Icon(
        icon,
        color: currentTab == page
            ? ColorConstants.primaryColor
            : Colors.blueGrey.shade200,
        size: 22,
      ),
    );
  }
}
