import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var myDatabase = Provider.of<MyDatabase>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Fav'),
      ),
      body: Center(
        child: Text(
          'This is the Index Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}