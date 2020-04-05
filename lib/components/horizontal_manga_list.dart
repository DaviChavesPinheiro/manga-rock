import 'package:flutter/material.dart';
import 'package:manga_rock/components/manga_tile.dart';
import 'package:manga_rock/models/manga_profile.dart';

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
              MangaTile(
                MangaProfile(
                  title: "Naruto Shippuden",
                  thumbnailUrl:
                      'https://br.web.img3.acsta.net/pictures/15/05/28/17/20/502228.jpg',
                  bannerUrl:
                      'https://br.web.img3.acsta.net/pictures/15/05/28/17/20/502228.jpg',
                ),
              ),
              MangaTile(
                MangaProfile(
                  title: "Boku No Hero Academia",
                  thumbnailUrl:
                      'https://img.elo7.com.br/product/zoom/1E7C1E1/big-poster-anime-my-hero-academia-tamanho-90x-0-cm-lo003-decoracao-nerd.jpg',
                  bannerUrl:
                      'https://img.elo7.com.br/product/zoom/1E7C1E1/big-poster-anime-my-hero-academia-tamanho-90x-0-cm-lo003-decoracao-nerd.jpg',
                ),
              ),
              MangaTile(
                MangaProfile(
                  title: "Tokyo Ghoul",
                  thumbnailUrl:
                      'https://img.elo7.com.br/product/zoom/1F2E1D9/big-poster-anime-tokyo-ghoul-tamanho-90x-0-cm-lo11-tokyo-ghoul.jpg',
                  bannerUrl:
                      'https://img.elo7.com.br/product/zoom/1F2E1D9/big-poster-anime-tokyo-ghoul-tamanho-90x-0-cm-lo11-tokyo-ghoul.jpg',
                ),
              ),
              MangaTile(
                MangaProfile(
                  title: "Naruto Shippuden",
                  thumbnailUrl:
                      'https://br.web.img3.acsta.net/pictures/15/05/28/17/20/502228.jpg',
                  bannerUrl:
                      'https://br.web.img3.acsta.net/pictures/15/05/28/17/20/502228.jpg',
                ),
              ),
              MangaTile(
                MangaProfile(
                  title: "Naruto Shippuden",
                  thumbnailUrl:
                      'https://br.web.img3.acsta.net/pictures/15/05/28/17/20/502228.jpg',
                  bannerUrl:
                      'https://br.web.img3.acsta.net/pictures/15/05/28/17/20/502228.jpg',
                ),
              ),
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
