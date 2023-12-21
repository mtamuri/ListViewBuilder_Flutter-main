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
/*import 'package:flutter/material.dart';
import 'hadith_navigator.dart'; // Import your HadithNavigator widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hadith Navigator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hadith Navigator Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Start exploring Hadiths!',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HadithNavigator(currentIndex: 0),
                  ),
                );
              },
              child: Text('Explore'),
            ),
          ],
        ),
      ),
    );
  }
}
*/ ////hypothesis for the json
import 'package:flutter/material.dart';
import 'Hadith/hadith_page.dart'; // Import the widget you want to start with
import 'Hadith/favorite_hadiths.dart';

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