import 'package:flutter/material.dart';
import 'package:manga_rock/screens/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Manga Rock',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(30, 30, 30, 1),
        accentColor: Colors.lightBlue,
        canvasColor: Colors.black,
        unselectedWidgetColor: Colors.grey[700],
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
      home: TabsScreen(),
    );
  }
}
