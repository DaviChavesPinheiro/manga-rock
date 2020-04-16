import 'package:flutter/material.dart';
import 'package:manga_rock/models/manga_profile.dart';

class MangaViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, Object> arguments =
        ModalRoute.of(context).settings.arguments;
    final MangaProfile mangaProfile = arguments['mangaProfile'];
    final int chapterIndex = arguments['chapterIndex'];
    print(mangaProfile.chapters[chapterIndex]['pages']);
    return Scaffold(
      appBar: AppBar(
        title: Text(mangaProfile.title),
      ),
      body: ListView.builder(
        // physics: NeverScrollableScrollPhysics(),
        // shrinkWrap: true,
        itemCount: mangaProfile.chapters[chapterIndex]['pages'].length,
        itemBuilder: (ctx, index) {
          return Image.network(
            mangaProfile.chapters[chapterIndex]['pages'][index]
                .toString()
                .replaceFirst(
                    "[RL]", mangaProfile.chapters[chapterIndex]['rootUrl']),
            headers: {
              'user-agent':
                  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36'
            },
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null
                        ? loadingProgress.cumulativeBytesLoaded /
                            loadingProgress.expectedTotalBytes
                        : null,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
