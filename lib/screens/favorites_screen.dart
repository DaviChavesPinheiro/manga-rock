import 'package:flutter/material.dart';
import 'package:manga_rock/components/manga_tile.dart';
import 'package:scoped_model/scoped_model.dart';
import '../data/GM.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<GM>(builder: (ctx, child, model) {
      return model.favoritos.length == 0
          ? Center(
              child: Text("Sua Lista de Favoritos está vazia :("),
            )
          : GridView.builder(
              itemCount: model.favoritos.length,
              padding: const EdgeInsets.all(8),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: MediaQuery.of(context).size.width / 3,
                  childAspectRatio: 1 / 1.8,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2),
              itemBuilder: (ctx, index) {
                return MangaTile(model.favoritos.elementAt(index));
              },
            );
    });
  }
}
