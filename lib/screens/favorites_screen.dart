import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../data/GM.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ScopedModelDescendant<GM>(builder: (ctx, child, model){
        return Text("Favorites: ${model.favoritos.length}");
      },),
    );
  }
}