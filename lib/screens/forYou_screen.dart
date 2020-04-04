import 'package:flutter/material.dart';
import 'package:manga_rock/components/horizontal_manga_list.dart';

class ForYouScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.fromLTRB(15, 30, 0, 30),
      children: <Widget>[
        HorizontalMangaList(),
        HorizontalMangaList(),
      ],
    );
  }
}
