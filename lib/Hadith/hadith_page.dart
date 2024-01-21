// hadith_page.dart
import 'package:flutter/material.dart';
import 'hadith_model.dart';
import 'hadith_data.dart';
import 'hadith_navigator.dart';
import 'favorites_page.dart';
import 'favorite_hadiths.dart';
import 'settings_page.dart';
import 'index_page.dart';

class HadithPage extends StatefulWidget {
  final int index;

  const HadithPage({Key? key, required this.index}) : super(key: key);

  @override
  _HadithPageState createState() => _HadithPageState();
}
class _HadithPageState extends State<HadithPage> {
  //late List<Hadith> favoriteHadiths; // Store favorite hadiths
  int _selectedIndex = 0;
  bool isFavorite = false; // Track favorite status
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5E6CA),
      appBar: AppBar(
        title: Text('Hadith ${widget.index + 1}'),
        backgroundColor: Color(0xFF8B5C3E),
      ),
      body: _selectedIndex == 0
          ? Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text(
            hadithList[widget.index].hadith,
            style: TextStyle(fontSize: 18 ),
            textAlign: TextAlign.right,
          ),
          SizedBox(height: 20),
          Text(
            hadithList[widget.index].translation,
            style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            textAlign: TextAlign.left,
          ),

          IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? Colors.red : null,
            ),
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
                if (isFavorite) {
                  // Add to favorites list
                  //  FavoriteHadiths().addFavorite(hadithList[widget.index]);
                } else {
                  // Remove from favorites list
                  //  FavoriteHadiths().removeFavorite(hadithList[widget.index]);
                }
              });
            },

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
          : Container(),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xFF8B5C3E),
          primaryColor: Colors.black,
          unselectedWidgetColor: Colors.grey,
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          //  fixedColor: Colors.black, // Set selected item color here
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
              icon: Icon(Icons.library_books),
              label: 'Index',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
              if (index == 1) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IndexPage()), // Navigate to the FavoritesPage
                );
              } else if (index == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IndexPage()), // Navigate to the IndexPage
                );
              } else if (index == 3) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()), // Navigate to the SettingsPage
                );
              }
            });
          },

        ),
      ),
    );
  }
}