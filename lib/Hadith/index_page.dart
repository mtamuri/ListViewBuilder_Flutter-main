import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Index'),
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
