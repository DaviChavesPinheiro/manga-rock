import 'package:flutter/material.dart';
import 'package:manga_rock/components/manga_tile.dart';
import 'package:manga_rock/models/manga_profile.dart';
import 'package:scoped_model/scoped_model.dart';
import '../data/GM.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FavoriteScreen extends StatelessWidget {
  List<Object> getSafaFavoritesDocuments(Set<String> favoritos, AsyncSnapshot snapshot) {
    List<Object> favoritesDocuments = [];
    favoritos.forEach((mangaTitle) {
      Object doc = snapshot.data.documents.singleWhere((document) {
        return document['title'] == mangaTitle;
      });
      if(doc != null){
        favoritesDocuments.add(doc);
      }
    });
    return favoritesDocuments;
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<GM>(builder: (ctx, child, model) {
      return model.favoritos.length == 0
          ? Center(
              child: Text("Sua Lista de Favoritos está vazia :("),
            )
          : StreamBuilder(
              stream: Firestore.instance.collection("mangas").snapshots(),
              builder: (context, snapshot) {
                final safeFavoritesDocuments = snapshot.hasData ? getSafaFavoritesDocuments(model.favoritos, snapshot) : [];

                return snapshot.hasData
                    ? GridView.builder(
                        itemCount: safeFavoritesDocuments.length,
                        padding: const EdgeInsets.all(8),
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent:
                                MediaQuery.of(context).size.width /
                                    (MediaQuery.of(context).orientation ==
                                            Orientation.portrait
                                        ? 3
                                        : 6),
                            childAspectRatio: 1 / 1.8,
                            crossAxisSpacing: 2,
                            mainAxisSpacing: 2),
                        itemBuilder: (ctx, index) {
                          return MangaTile(
                            MangaProfile.fromDocumentSnapshot(safeFavoritesDocuments.elementAt(index)),
                          );
                        },
                      )
                    : Text("Carregando Favoritos...");
              });
    });
  }
}
