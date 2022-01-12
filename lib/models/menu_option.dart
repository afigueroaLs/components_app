import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  final String route;
  final IconData icon;
  final String nameScreen;
  final Widget screen;

  MenuOption({
   required this.route,
   required this.icon, 
   required this.nameScreen, 
   required this.screen
  });
}