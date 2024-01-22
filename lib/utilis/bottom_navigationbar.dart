import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:liveproject/utilis/Themesdata/themecolors.dart';

class Bottomnavigationbaritemdata extends StatelessWidget {
  // String? text;
  // String? icon;
  // Color? color;
  // Bottomnavigationbaritemdata({super.key, this.text, this.icon, this.color});

  // BottomNavigationBarItemData(this.text, this.icon, this.color);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: [
      BottomNavigationBarItems('Home', Icon(Icons.home), Themecolor.iconcolor),
      BottomNavigationBarItems(
          'Booking', Icon(Icons.collections_bookmark_outlined), Colors.black),
      BottomNavigationBarItems(
          'Inbox', Icon(Icons.message_outlined), Colors.black),
      BottomNavigationBarItems(
          'Wallet', Icon(Icons.wallet_travel_rounded), Colors.black),
      BottomNavigationBarItems(
          'Profile', Icon(Icons.perm_identity), Colors.black),
    ]);
  }

  BottomNavigationBarItem BottomNavigationBarItems(
      String text, Icon icon, Color color) {
    return BottomNavigationBarItem(
      icon: icon,
      label: text,
      backgroundColor: color,
    );
  }
}

class BottomNavigationBarItemData {
  String? text;
  String? icon;
  Color? color;

  BottomNavigationBarItemData(this.text, this.icon, this.color);
}
