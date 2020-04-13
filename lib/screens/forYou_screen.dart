import 'package:flutter/material.dart';
import 'package:manga_rock/components/horizontal_manga_list.dart';
import 'package:manga_rock/models/manga_profile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ForYouScreen extends StatelessWidget {
  // MangaProfile cloudDataToMangaProfile(DocumentSnapshot document) {
  //   return MangaProfile(
  //     title: document['title'],
  //     autor: document['autor'],
  //     description: document['description'],
  //     thumbnailUrl: document['thumbnailUrl'],
  //     bannerUrl: document['bannerUrl'],
  //     chapters: List<String>.from(document['chapters']),
  //   );
  // }

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
                    List<MangaProfile>.from(
                      snapshot.data.documents.map(
                        (document) {
                          return MangaProfile.fromDocumentSnapshot(document);
                        },
                      ),
                    ),
                  ),
                  HorizontalMangaList(
                    List<MangaProfile>.from(
                      snapshot.data.documents.map(
                        (document) {
                          return MangaProfile.fromDocumentSnapshot(document);
                        },
                      ),
                    ),
                  ),
                  HorizontalMangaList(
                    List<MangaProfile>.from(
                      snapshot.data.documents.map(
                        (document) {
                          return MangaProfile.fromDocumentSnapshot(document);
                        },
                      ),
                    ),
                  ),
                  HorizontalMangaList(
                    List<MangaProfile>.from(
                      snapshot.data.documents.map(
                        (document) {
                          return MangaProfile.fromDocumentSnapshot(document);
                        },
                      ),
                    ),
                  ),
                ],
              )
            : CircularProgressIndicator();
      },
    );
  }
}
