import 'package:flutter/material.dart';
import 'package:manga_rock/screens/manga_profile_screen.dart';
import 'package:manga_rock/screens/manga_view_screen.dart';
import 'package:manga_rock/screens/tabs_screen.dart';
import 'package:manga_rock/utils/app_routes.dart';

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
      routes: {
        AppRoutes.HOME : (ctx) => TabsScreen(),
        AppRoutes.MANGA_PROFILE : (ctx) => MangaProfileScreen(),
        // AppRoutes.MANGA_VIEW : (ctx) => MangaViewScreen(),
      },
    );
  }
}
