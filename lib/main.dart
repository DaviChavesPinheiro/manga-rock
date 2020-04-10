import 'package:flutter/material.dart';
import 'package:manga_rock/data/GM.dart';
import 'package:manga_rock/screens/manga_chapters_screen.dart';
import 'package:manga_rock/screens/manga_profile_screen.dart';
import 'package:manga_rock/screens/tabs_screen.dart';
import 'package:manga_rock/utils/app_routes.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(MyApp(
      gm: GM(),
    ));

class MyApp extends StatefulWidget {
  final GM gm;

  const MyApp({Key key, @required this.gm}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    widget.gm.loadFavorites();
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModel<GM>(
      model: widget.gm,
      child: MaterialApp(
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
          AppRoutes.HOME: (ctx) => TabsScreen(),
          AppRoutes.MANGA_PROFILE: (ctx) => MangaProfileScreen(),
          AppRoutes.MANGA_CHAPTERS: (ctx) => MangaChaptersScreen(),
          // AppRoutes.MANGA_VIEW : (ctx) => MangaViewScreen(),
        },
      ),
    );
  }
}
