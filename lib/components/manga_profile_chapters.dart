import 'package:flutter/material.dart';
import 'package:manga_rock/models/manga_profile.dart';
import 'package:manga_rock/utils/app_routes.dart';

class MangaProfileChapters extends StatelessWidget {
  final MangaProfile mangaProfile;

  const MangaProfileChapters(this.mangaProfile);

  List<Map<String, Object>> get fiveChapters {
    List<Map<String, Object>> chapters = [];
    for (var i = 0; i < 5 && i < mangaProfile.chapters.length; i++) {
      chapters.add(mangaProfile.chapters[i]);
    }
    return chapters;
  }

  void showChapterList(BuildContext context){
    Navigator.of(context).pushNamed(
      AppRoutes.MANGA_CHAPTERS,
      arguments: mangaProfile
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Chapters",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Icon(
                  Icons.file_download,
                  color: Colors.grey,
                  size: 26,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                  size: 26,
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: fiveChapters.map((chapter) {
              return Material(
                type: MaterialType.transparency,
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.only(
                      bottom: 12,
                      left: 20,
                      right: 12,
                      top: 12
                    ),
                    child: Text(
                      chapter['title'],
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: RaisedButton(
              onPressed: (){showChapterList(context);},
              child: Text(
                "VIEW ALL ${mangaProfile.chapters.length} CHAPTERS",
                style: TextStyle(color: Theme.of(context).accentColor, fontSize: 16),
              ),
              color: Colors.grey[800],
            ),
          )
        ],
      ),
    );
  }
}
