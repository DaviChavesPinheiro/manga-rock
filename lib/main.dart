import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MangaRock',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "MangaRock",
          ),
        ),
        body: Center(
          child: Text('Home'),
        ),
      ),
    );
  }
}