import 'package:flutter/material.dart';
import 'package:manga_rock/screens/all_screen.dart';
import 'package:manga_rock/screens/forYou_screen.dart';
import 'package:manga_rock/screens/latest_screen.dart';

class TabsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("MangaRock"),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
              child: Icon(Icons.search),
            )
          ],
          bottom: TabBar(
            labelColor: Theme.of(context).accentColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            tabs: [
              Container(
                alignment: Alignment.center,
                height: 40,
                child: Text("FOR YOU"),
              ),
              Container(
                alignment: Alignment.center,
                height: 40,
                child: Text("ALL"),
              ),
              Container(
                alignment: Alignment.center,
                height: 40,
                child: Text("LATEST"),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ForYouScreen(),
            AllScreen(),
            LatestScreen(),
          ],
        ),
      ),
    );
  }
}
