import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class MyPdfViewer extends StatefulWidget {
  const MyPdfViewer({Key? key}) : super(key: key);

  @override
  State<MyPdfViewer> createState() => _MyPdfViewerState();
}

class _MyPdfViewerState extends State<MyPdfViewer> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'arabic',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'قال رسول الله صلى الله عليه وسلم:\n\nروى عمر بن الخطاب رضي الله عنه:'
                      '"إنما الأعمال بالنيات، وإنما لكل امرئ ما نوى، فمن كانت هجرته إلى الله ورسوله، فهجرته إلى الله ورسوله، ومن كانت هجرته لدنيًا يصيبها أو امرأة ينكحها، فهجرته إلى ما هاجر إليه."\n\n'
                      'المصدر:\n\n'
                      'صحيح البخاري 1 (6) وصحيح مسلم 1905ب',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.right,
                ),
                SizedBox(height: 20),
                Text(
                  'ኣማርኛ ትርጉም',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: 10),
                Text(
                  'ዑመር ቢን አል-ኸጣብ ረዲየላሁ ዐንሁ እንዲህ ሲሉ ዘግበዋል፡-\n'
                      'ነቢዩ ሰለላሁ ዐለይሂ ወሰለም እንዲህ ብለዋል፡-\n'
                      '“ሥራው በሐሳብ ላይ የተመሰረተ ነው፣ ለእያንዳንዱም ሰው ያሰበውን፣ ስደቱም ለአላህና ለመልእክተኛው (ሰ. አግቡ ስደቱም ወደ ተሰደደበት ነው» አለ።\n'
                      'ምንጭ፡-\n'
                      'ሳሂህ አል-ቡካሪ 1 (6) እና ሳሂህ ሙስሊም 1905',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
        ),
      ],
    ),
    Text('Favorites Page'),
    Text('Index Page'),
    Text('Settings Page'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("ሪያዱ አስ ሳሊሂን ቅጽ 1"),
      ),
      body: _pages[_selectedIndex], // Display the selected page/screen

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Index',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue, // Color of the selected item
        unselectedItemColor: Colors.grey, // Color of unselected items
        backgroundColor: Colors.white, // Background color of the BottomNavigationBar
        onTap: _onItemTapped,
      ),
    );
  }
}
