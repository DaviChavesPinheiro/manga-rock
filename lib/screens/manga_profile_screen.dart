import 'package:flutter/material.dart';
import 'package:manga_rock/components/manga_profile_chapters.dart';
import 'package:manga_rock/components/manga_profile_header.dart';
import 'package:manga_rock/components/manga_profile_summary.dart';
import 'package:manga_rock/models/manga_profile.dart';

class MangaProfileScreen extends StatelessWidget {

  void viewManga(BuildContext context, mangaProfile){
    // Navigator.of(context).pushNamed(
    //   AppRoutes.MANGA_VIEW,
    //   arguments: mangaProfile
    // );
  }

  // final paginas = const [
  //   "http://unionleitor.top/images/banner_scan.png",
  //   "http://unionleitor.top/images/banner_forum.png",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/000.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/001.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/002.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/003.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/004.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/005.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/006.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/007.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/008.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/009.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/010.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/011.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/012.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/013.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/014.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/015.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/016.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/017.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/018.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/019.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/020.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/021.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/022.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/023.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/024.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/025.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/026.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/027.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/028.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/029.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/030.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/031.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/032.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/033.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/034.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/035.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/036.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/037.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/038.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/039.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/040.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/041.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/042.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/043.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/044.jpg",
  //   "http://unionleitor.top/leitor/mangas/Tokyo Ghoul/01/045.jpg"
  // ];

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
          ),
        ),
      ),
    );
  }
}
