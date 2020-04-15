import 'package:flutter/material.dart';
import 'package:manga_rock/models/manga_profile.dart';
import 'package:manga_rock/utils/app_routes.dart';

class MangaChaptersScreen extends StatelessWidget {

  void showMangaView(BuildContext context, MangaProfile mangaProfile, int chapterIndex){
    Navigator.of(context)
        .pushNamed(AppRoutes.MANGA_VIEW, arguments: {'mangaProfile':mangaProfile, 'chapterIndex': chapterIndex});
  }

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
            onTap: (){showMangaView(context, mangaProfile, index);},
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 15
              ),
              child: Text(mangaProfile.chapters[index]['title']),
            ),
          );
        },
      ),
    );
  }
}
