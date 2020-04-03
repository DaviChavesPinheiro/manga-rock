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
            unselectedLabelColor: Theme.of(context).unselectedWidgetColor,
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
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Theme.of(context).accentColor,
          unselectedItemColor: Colors.grey[600],
          iconSize: 21,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Container(
                height: 18,
                alignment: Alignment.bottomCenter,
                child: Text('DISCOVER'),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Container(
                height: 18,
                alignment: Alignment.bottomCenter,
                child: Text('FAVORITES'),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_time),
              title: Container(
                height: 18,
                alignment: Alignment.bottomCenter,
                child: Text('RECENT'),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.file_download),
              title: Container(
                height: 18,
                alignment: Alignment.bottomCenter,
                child: Text('DOWNLOADS'),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              title: Container(
                height: 18,
                alignment: Alignment.bottomCenter,
                child: Text('MORE'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
