import 'package:flutter/material.dart';
import 'package:manga_rock/components/horizontal_manga_list.dart';
import 'package:manga_rock/data/DATA.dart';
import 'package:manga_rock/models/manga_profile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ForYouScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Firestore.instance.collection("mangas").snapshots(),
      builder: (ctx, snapshot) {
        return snapshot.hasData
            ? ListView(
                padding: EdgeInsets.fromLTRB(15, 30, 0, 30),
                children: <Widget>[
                  HorizontalMangaList(
                    [
                      MangaProfile(
                        title: snapshot.data.documents[0]['title'],
                        autor: snapshot.data.documents[0]['autor'],
                        description: snapshot.data.documents[0]['description'],
                        thumbnailUrl: snapshot.data.documents[0]['thumbnailUrl'],
                        bannerUrl: snapshot.data.documents[0]['bannerUrl'],
                        chapters: List<String>.from(snapshot.data.documents[0]['chapters']),
                      ),
                    ],
                  ),
                  HorizontalMangaList(MANGAS),
                  HorizontalMangaList(MANGAS),
                  HorizontalMangaList(MANGAS),
                ],
              )
            : Text("Mangás Indisponíveis :(");
      },
    );
  }
}
