import 'package:flutter/material.dart';
import '../custom_bottom_bar.dart';
import 'favorites_page.dart';
import 'index_page.dart';
import '../uitilities/navigation_utils.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5E6CA),
      appBar: AppBar(
        backgroundColor: const Color(0xFF8B5C3E),
        title: const Text('Fav'),
      ),
      body: const Center(
        child: Text(
          'This is the Index Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          onNavBarTap(context: context, index: index);
        },
        currentIndex: _currentIndex,
      ),
    );
  }
}
