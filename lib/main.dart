/*import 'package:flutter/material.dart';
import 'package:flutter_listview/pdf_viewer.dart';

import 'hero_animation_listViewBuilder/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPdfViewer(),
     //  home: MyHomePage(),
    );
  }
}
*/
import 'package:flutter/material.dart';
import 'Hadith/hadith_page.dart'; // Import the widget you want to start with

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hadith App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HadithPage(index: 0), // Start with HadithPage at index 0
    );
  }
}
