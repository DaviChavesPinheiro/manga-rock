import 'package:flutter/material.dart';
import 'package:manga_rock/models/manga_profile.dart';

class MangaProfileSummary extends StatelessWidget {
  final MangaProfile mangaProfile;

  const MangaProfileSummary(this.mangaProfile);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: Theme.of(context).primaryColor,
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Summary",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            mangaProfile.description,
            style: TextStyle(
              fontSize: 13.5,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
