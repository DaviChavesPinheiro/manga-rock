import 'package:flutter/material.dart';
import 'package:manga_rock/models/manga_profile.dart';

class MangaChaptersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MangaProfile mangaProfile = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          mangaProfile.title,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: ListView.builder(
        itemCount: mangaProfile.chapters.length,
        itemBuilder: (ctx, index){
          return InkWell(
            onTap: (){},
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 15
              ),
              child: Text(mangaProfile.chapters[index]),
            ),
          );
        },
      ),
    );
  }
}
