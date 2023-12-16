//import 'package:flutter/material.dart';
//import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
/*
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
          'Arabic',
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
                  textAlign: TextAlign.center,
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
      backgroundColor: Color(0xFFAD9D4F),
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
        selectedItemColor: Color(0x56AD9D4F), // Color of the selected item
        unselectedItemColor: Colors.grey, // Color of unselected items
        backgroundColor: Color(0xFFAD9D4F), // Background color of the BottomNavigationBar
        onTap: _onItemTapped,
      ),
    );
  }
}
*/
/*
class Hadith {
  final String text;
  final String translation;

  Hadith({required this.text, required this.translation});
}
List<Hadith> hadithList = [
  Hadith(
    text: 'Hadith 1 text',
    translation: 'Hadith 1 translation',
  )
  // Add more Hadiths...
];
class HadithPage extends StatefulWidget {
  final int index;

  const HadithPage({Key? key, required this.index}) : super(key: key);

  @override
  State<HadithPage> createState() => _HadithPageState();
}

class _HadithPageState extends State<HadithPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hadith ${widget.index + 1}'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              hadithList[widget.index].text,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              hadithList[widget.index].translation,
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
class HadithNavigator extends StatelessWidget {
  final int currentIndex;

  const HadithNavigator({Key? key, required this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        if (currentIndex > 0)
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HadithPage(index: currentIndex - 1),
                ),
              );
            },
            child: Text('Previous'),
          ),
        ElevatedButton(
          onPressed: () {
            if (currentIndex < hadithList.length - 1) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HadithPage(index: currentIndex + 1),
                ),
              );
            } else {
              // Handle the case when it reaches the end of the list
            }
          },
          child: Text('Next'),
        ),
      ],
    );
  }
}
*/