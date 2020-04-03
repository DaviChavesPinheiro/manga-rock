import 'package:flutter/material.dart';
import 'package:manga_rock/screens/forYou_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MangaRock',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(35, 35, 35, 1),
        accentColor: Colors.blue,
        canvasColor: Colors.black,
        textTheme: ThemeData().textTheme.copyWith(
              headline: TextStyle(
                fontSize: 17,
                color: Colors.white,
              ),
              body1: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
              subhead: TextStyle(
                color: Colors.white,
              ),
            ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "MangaRock",
          ),
        ),
        body: ForYouScreen(),
      ),
    );
  }
}
