/*
import 'package:flutter/material.dart';
import 'hadith_page.dart';
import 'hadith_data.dart';
import 'hadith_model.dart';

class HadithNavigator extends StatelessWidget {
  final int currentIndex;

  const HadithNavigator({Key? key, required this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Hadith>?>(
      future: loadHadithsFromJson(), // Load Hadith data asynchronously
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator(); // Show a loader while data is being fetched
        } else if (snapshot.hasError) {
          return Text('Error loading data'); // Show an error message if data fetching fails
        } else if (!snapshot.hasData || snapshot.data == null || currentIndex >= snapshot.data!.length) {
          return Text('No data available'); // Handle edge cases where data might be unavailable
        } else {
          // Display the navigation buttons based on the current index
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (currentIndex > 0)
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
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
                  if (currentIndex < snapshot.data!.length - 1) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HadithPage(index: currentIndex + 1),
                      ),
                    );
                  } else {
                    // Show a snackbar or dialog to inform the user they reached the end
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('You reached the last hadith'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  }
                },
                child: Text('Next'),
              ),
            ],
          );
        }
      },
    );
  }
}

// Change the return type of loadHadithsFromJson
Future<List<Hadith>?> loadHadithsFromJson() async {
  // Your code to load hadith data
  // ...

  // If data is successfully loaded, return the list
  if (Hadith != null) {
    return Hadith as List<Hadith>;
  }

  // Otherwise, return null
  return null;
}
*/
//hypothesis for the json
// hadith_navigator.dart
import 'package:flutter/material.dart';
import 'hadith_page.dart';
import 'hadith_data.dart';

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
              Navigator.pushReplacement(
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
              Navigator.pushReplacement(
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
