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
