//hypothesis for the json
import 'package:flutter/material.dart';
import 'Hadith/hadith_page.dart'; // Import the widget you want to start with

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HadithPage(index: 0), // Start with HadithPage at index 0
    );
  }
}