import 'package:flutter/material.dart';
import 'package:manga_rock/components/manga_tile.dart';

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
              MangaTile(),
              MangaTile(),
              MangaTile(),
              MangaTile(),
              MangaTile(),
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
