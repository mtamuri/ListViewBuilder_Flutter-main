import 'package:flutter/material.dart';
import '../screens/favorites_page.dart';
import '../screens/index_page.dart';
import '../screens/settings_page.dart';

void onNavBarTap({
  required BuildContext context,
  required int index,
}) {
  if (index == 1) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FavoritesPage()),
    );
  } else if (index == 2) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => IndexPage()),
    );
  } else if (index == 3) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SettingsPage()),
    );
  }
}
