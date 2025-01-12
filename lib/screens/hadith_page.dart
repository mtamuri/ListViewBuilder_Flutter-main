import 'package:flutter/material.dart';
import '../Hadith/hadith_data.dart';
import '../custom_bottom_bar.dart';
import '../uitilities/navigation_utils.dart';
import 'favorites_page.dart';
import 'settings_page.dart';
import 'index_page.dart';

class HadithPage extends StatefulWidget {
  final int index;

  const HadithPage({Key? key, required this.index}) : super(key: key);

  @override
  _HadithPageState createState() => _HadithPageState();
}

class _HadithPageState extends State<HadithPage> {
  bool isFavorite = false;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    bool isEndOfList = widget.index >= hadithList.length - 1;

    return Scaffold(
      backgroundColor: const Color(0xFFF5E6CA),
      appBar: AppBar(
        title: Text('Hadith ${widget.index + 1}'),
        backgroundColor: const Color(0xFF8B5C3E),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      hadithList[widget.index].hadith,
                      style: const TextStyle(fontSize: 18),
                      textAlign: TextAlign.right,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      hadithList[widget.index].translation,
                      style: const TextStyle(
                          fontSize: 16, fontStyle: FontStyle.italic),
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
                            // FavoriteHadith().addFavorite(hadithList[widget.index]);
                          } else {
                            // Remove from favorites list
                            // FavoriteHadith().removeFavorite(hadithList[widget.index]);
                          }
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (widget.index > 0)
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            HadithPage(index: widget.index - 1),
                      ),
                    );
                  },
                  child: const Icon(Icons.arrow_back),
                ),
              ElevatedButton(
                onPressed: isEndOfList
                    ? null // Null onPressed disables the button
                    : () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                HadithPage(index: widget.index + 1),
                          ),
                        );
                      },
                child: const Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ],
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
