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
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'FOR YOU',
              ),
              Tab(
                text: 'ALL',
              ),
              Tab(
                text: 'LATEST',
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
