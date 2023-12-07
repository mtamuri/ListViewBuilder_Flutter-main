import 'package:flutter/material.dart';
import 'hadith_model.dart';
import 'hadith_data.dart';// Import your Hadith model and data
import 'hadith_navigator.dart';
class HadithPage extends StatefulWidget {
  final int index;

  const HadithPage({Key? key, required this.index}) : super(key: key);

  @override
  _HadithPageState createState() => _HadithPageState();
}

class _HadithPageState extends State<HadithPage> {
  int _selectedIndex = 0; // Track the selected bottom navigation bar item

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5E6CA), // Background color of the page
      appBar: AppBar(
        title: Text('Hadith ${widget.index + 1}'),
        backgroundColor: Color(0xFF8B5C3E), // App bar background color
      ),
      body: _selectedIndex == 0 // Only display Hadith content on Home tab
          ? Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            hadithList[widget.index].text,
            textAlign: TextAlign.right,
            style: TextStyle(fontSize: 18),
          ),

          SizedBox(height: 20),
          Text(
            hadithList[widget.index].translation,
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
          ),
          Spacer(), // Pushes the buttons to the bottom
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (widget.index > 0)
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HadithPage(index: widget.index - 1),
                      ),
                    );
                  },
                  child: Text('Previous'),
                ),
              ElevatedButton(
                onPressed: () {
                  if (widget.index < hadithList.length - 1) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HadithPage(index: widget.index + 1),
                      ),
                    );
                  } else {
                    // Handle the case when it reaches the end of the list
                  }
                },
                child: Text('Next'),
              ),
            ],
          ),
        ],
      )
          : Container(), // For other tabs, display an empty Container
      bottomNavigationBar: BottomNavigationBar(
        //... Your BottomNavigationBar content
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
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            // Implement navigation logic based on the selected item
          });
        },
      ),
    );
  }
}



