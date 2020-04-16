import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:manga_rock/components/manga_profile_chapters.dart';
import 'package:manga_rock/components/manga_profile_header.dart';
import 'package:manga_rock/components/manga_profile_summary.dart';
import 'package:manga_rock/models/manga_profile.dart';

class MangaProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MangaProfile mangaProfile = ModalRoute.of(context).settings.arguments;

    void getDescriptionAndChapters(AsyncSnapshot snapshot){
      mangaProfile.description = snapshot.data.documents[0]['description'];
      mangaProfile.chapters = List<Map<String, Object>>.from(snapshot.data.documents[0]['chapters']);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: StreamBuilder(
              stream: Firestore.instance.collection("mangas/"+mangaProfile.id+"/more").snapshots(),
              builder: (ctx, snapshot) {
                if(snapshot.hasData) {
                  getDescriptionAndChapters(snapshot);
                }
                return snapshot.hasData
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          MangaProfileHeader(mangaProfile),
                          MangaProfileSummary(mangaProfile),
                          MangaProfileChapters(mangaProfile),
                          // ListView.builder(
                          //   physics: NeverScrollableScrollPhysics(),
                          //   shrinkWrap: true,
                          //   itemCount: paginas.length,
                          //   itemBuilder: (ctx, index) {
                          //     return Image.network(
                          //       paginas[index],
                          //       headers: {
                          //         'user-agent':
                          //             'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36'
                          //       },
                          //     );
                          //   },
                          // )
                        ],
                      )
                    : Center(child: CircularProgressIndicator());
              }),
        ),
      ),
    );
  }
}
