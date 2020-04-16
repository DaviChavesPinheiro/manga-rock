import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:manga_rock/components/manga_tile.dart';
import 'package:manga_rock/models/manga_profile.dart';

class AllScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Firestore.instance.collection("mangas").snapshots(),
        builder: (context, snapshot) {
          return snapshot.hasData
              ? GridView.builder(
                  itemCount: snapshot.data.documents.length, 
                  padding: const EdgeInsets.all(8),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: MediaQuery.of(context).size.width /
                          (MediaQuery.of(context).orientation ==
                                  Orientation.portrait
                              ? 3
                              : 6),
                      childAspectRatio: 1 / 1.8,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2),
                  itemBuilder: (ctx, index) {
                    return MangaTile(
                      MangaProfile.fromDocumentSnapshot(snapshot.data.documents[index])
                    );
                  },
                )
              : Center(child: CircularProgressIndicator());
        });
  }
}
