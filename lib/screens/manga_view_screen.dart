import 'package:flutter/material.dart';
import 'package:manga_rock/models/manga_profile.dart';

class MangaViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MangaProfile mangaProfile = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(mangaProfile.title),
      ),
    );
  }
}
