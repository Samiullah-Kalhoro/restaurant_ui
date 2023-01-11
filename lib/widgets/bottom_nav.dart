import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controllers/nav_controller.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key, required this.activeIndex});
  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    NavigationController navigationController =
        Provider.of<NavigationController>(context);
    return BottomNavigationBar(
      currentIndex: activeIndex,
      onTap: (buttonIndex) {
        switch (buttonIndex) {
          case 0:
            navigationController.changeScreen('/');
            break;
          case 1:
            navigationController.changeScreen('/settings');
            break;
        }
      },
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedItemColor: Colors.white60,
      selectedItemColor: const Color(0xffea7c69),
      backgroundColor: const Color(0xff252836),
      selectedIconTheme: const IconThemeData(size: 35),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
    );
  }
}
