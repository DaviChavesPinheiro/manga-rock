import 'package:flutter/material.dart';
import 'package:manga_rock/models/manga_profile.dart';

class MangaProfileScreen extends StatelessWidget {
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
              Container(
                height: 440,
                color: Theme.of(context).primaryColor,
                margin: EdgeInsets.only(bottom: 20),
                child: Stack(
                  children: <Widget>[
                    Image.network(
                      mangaProfile.bannerUrl,
                      height: 165,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width /
                                  (MediaQuery.of(context).orientation ==
                                          Orientation.portrait
                                      ? 3
                                      : 5),
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Theme.of(context).primaryColor,
                              ),
                              child: Image.network(
                                mangaProfile.thumbnailUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              mangaProfile.title,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "By " + mangaProfile.autor,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              height: 50,
                              margin: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 25),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: <Widget>[
                                  Expanded(
                                    child: Material(
                                      type: MaterialType.transparency,
                                      color: Colors.transparent,
                                      child: InkWell(
                                        onTap: () {},
                                        splashColor: Colors.grey,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Icon(
                                              Icons.play_arrow,
                                              color:
                                                  Theme.of(context).accentColor,
                                              size: 28,
                                            ),
                                            Text(
                                              "Resume",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  VerticalDivider(
                                    color: Colors.grey[700],
                                  ),
                                  Expanded(
                                    child: Material(
                                      type: MaterialType.transparency,
                                      color: Colors.transparent,
                                      child: InkWell(
                                        onTap: () {},
                                        splashColor: Colors.grey,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Icon(
                                              Icons.list,
                                              color:
                                                  Theme.of(context).accentColor,
                                              size: 28,
                                            ),
                                            Text(
                                              "120 Chapters",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  VerticalDivider(
                                    color: Colors.grey[700],
                                  ),
                                  Expanded(
                                    child: Material(
                                      type: MaterialType.transparency,
                                      color: Colors.transparent,
                                      child: InkWell(
                                        onTap: () {},
                                        splashColor: Colors.grey,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Icon(
                                              Icons.favorite_border,
                                              color:
                                                  Theme.of(context).accentColor,
                                              size: 28,
                                            ),
                                            Text(
                                              "Favorite",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                color: Theme.of(context).primaryColor,
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
                      "  " + mangaProfile.description,
                      style: TextStyle(
                        fontSize: 13.5,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
