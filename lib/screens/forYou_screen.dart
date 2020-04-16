import 'package:flutter/material.dart';
import 'package:manga_rock/components/horizontal_manga_list.dart';
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
                    List<MangaProfile>.from(
                      snapshot.data.documents.map(
                        (document) {
                          print(document.documentID);
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
            : Center(child: CircularProgressIndicator());
      },
    );
  }
}
