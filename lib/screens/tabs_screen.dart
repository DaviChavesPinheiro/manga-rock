import 'package:flutter/material.dart';
import 'package:manga_rock/data/GM.dart';
import 'package:manga_rock/models/manga_profile.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:manga_rock/screens/discover_screen.dart';
import 'package:manga_rock/screens/downloads_screen.dart';
import 'package:manga_rock/screens/favorites_screen.dart';
import 'package:manga_rock/screens/more_screen.dart';
import 'package:manga_rock/screens/recent_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;
  final List<Map<String, Object>> _screens = [
    {'title': 'Manga Rock', 'screen': DiscoverScreen()},
    {'title': 'Favorites', 'screen': FavoriteScreen()},
    {'title': 'Recent', 'screen': RecentScreen()},
    {'title': 'Downloads', 'screen': DownloadScreen()},
    {'title': 'More', 'screen': MoreScreen()},
  ];

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
      print(_selectedScreenIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(_selectedScreenIndex == 0 ? 100 : 60),
          child: AppBar(
            title: Text(_screens[_selectedScreenIndex]['title']),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8,
                ),
                child: Icon(Icons.search),
              )
            ],
            bottom: _selectedScreenIndex == 0
                ? TabBar(
                    labelColor: Theme.of(context).accentColor,
                    unselectedLabelColor:
                        Theme.of(context).unselectedWidgetColor,
                    labelStyle:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
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
                  )
                : null,
          ),
        ),
        body: _screens[_selectedScreenIndex]['screen'],
        bottomNavigationBar: BottomNavigationBar(
          onTap: _selectScreen,
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Theme.of(context).accentColor,
          unselectedItemColor: Colors.grey[600],
          iconSize: 21,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
          currentIndex: _selectedScreenIndex,
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
        floatingActionButton: ScopedModelDescendant<GM>(
          builder: (ctx, child, model) {
            return FloatingActionButton(onPressed: () {
              model.addFavorite(MangaProfile(title: 'Blah', description: 'blah', bannerUrl: 'blah', chapters: ['blah'], autor: 'blah', thumbnailUrl: 'blah'));
            });
          },
        ),
      ),
    );
  }
}
