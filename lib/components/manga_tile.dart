import 'package:flutter/material.dart';
import 'package:manga_rock/models/manga_profile.dart';
import 'package:manga_rock/utils/app_routes.dart';

class MangaTile extends StatelessWidget {
  final MangaProfile mangaProfile;
  final bool showAutor;
  const MangaTile(this.mangaProfile, {this.showAutor = true});

  void selectManga(BuildContext context) {
    Navigator.of(context)
        .pushNamed(AppRoutes.MANGA_PROFILE, arguments: mangaProfile);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4, left: 4),
      child: Material(
        color: Theme.of(context).primaryColor,
        child: InkWell(
          borderRadius: BorderRadius.circular(3),
          onTap: () => selectManga(context),
          child: Container(
            height: double.infinity,
            width: 150 * 0.65,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(3),
                    topRight: Radius.circular(3),
                  ),
                  child: Image.network(
                    mangaProfile.thumbnailUrl,
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(7, 7, 7, 4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          mangaProfile.title,
                          textAlign: TextAlign.left,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        showAutor ? Text(
                          mangaProfile.autor,
                          textAlign: TextAlign.left,
                          // maxLines: 1,
                          softWrap: false,
                          overflow: TextOverflow.fade,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ) : Container(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
