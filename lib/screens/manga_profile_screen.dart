import 'package:flutter/material.dart';
import 'package:manga_rock/models/manga_profile.dart';

class MangaProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MangaProfile mangaProfile = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Theme.of(context).primaryColor, Colors.transparent])),
        ),
      ),
      body: Center(
        child: Text(mangaProfile.title),
      ),
    );
  }
}
