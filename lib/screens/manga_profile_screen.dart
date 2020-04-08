import 'package:flutter/material.dart';
import 'package:manga_rock/components/manga_profile_header.dart';
import 'package:manga_rock/components/manga_profile_summary.dart';
import 'package:manga_rock/models/manga_profile.dart';
import 'package:manga_rock/utils/app_routes.dart';

class MangaProfileScreen extends StatelessWidget {

  void viewManga(BuildContext context, mangaProfile){
    // Navigator.of(context).pushNamed(
    //   AppRoutes.MANGA_VIEW,
    //   arguments: mangaProfile
    // );
  }


  @override
  Widget build(BuildContext context) {
    final MangaProfile mangaProfile = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              MangaProfileHeader(mangaProfile),
              MangaProfileSummary(mangaProfile)
            ],
          ),
        ),
      ),
    );
  }
}
