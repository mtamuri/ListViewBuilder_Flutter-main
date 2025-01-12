import 'package:flutter/material.dart';
import 'package:flutter_listview/screens/settings_page.dart';

import '../custom_bottom_bar.dart';
import '../uitilities/navigation_utils.dart';
import 'favorites_page.dart';

class IndexPage extends StatefulWidget {
  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
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
