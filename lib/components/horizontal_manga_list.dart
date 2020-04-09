import 'package:flutter/material.dart';
import 'package:manga_rock/components/manga_tile.dart';
import 'package:manga_rock/models/manga_profile.dart';
import 'package:manga_rock/data/DATA.dart';

class HorizontalMangaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Hot Updates"),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 220,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              MangaTile(MANGAS[0]),
              MangaTile(MANGAS[1]),
              MangaTile(MANGAS[0]),
              MangaTile(MANGAS[1]),
              // MangaTile(MANGAS[1]),
              // MangaTile(MANGAS[2]),
              // MangaTile(MANGAS[0]),
              // MangaTile(MANGAS[0]),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
