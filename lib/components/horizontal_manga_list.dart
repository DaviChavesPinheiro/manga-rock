import 'package:flutter/material.dart';
import 'package:manga_rock/components/manga_tile.dart';
import 'package:manga_rock/models/manga_profile.dart';

class HorizontalMangaList extends StatelessWidget {
  final List<MangaProfile> mangasProfiles;

  const HorizontalMangaList(this.mangasProfiles);

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
            children: mangasProfiles.map((m){
              return MangaTile(m);
            }).toList(),
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
