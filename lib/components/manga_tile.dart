import 'package:flutter/material.dart';
import 'package:manga_rock/models/manga_profile.dart';
import 'package:manga_rock/utils/app_routes.dart';

class MangaTile extends StatelessWidget {

  final MangaProfile mangaProfile;

  const MangaTile(this.mangaProfile);

  void selectMeal(BuildContext context){
    Navigator.of(context).pushNamed(
      AppRoutes.MANGA_PROFILE,
      arguments: mangaProfile
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Material(
        color: Theme.of(context).primaryColor,
        child: InkWell(
          borderRadius: BorderRadius.circular(3),
          onTap: () => selectMeal(context),
          child: Container(
            height: double.infinity,
            width: 115,
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
                    padding: EdgeInsets.all(7),
                    child: Text(
                      mangaProfile.title,
                      textAlign: TextAlign.left,
                      // overflow: TextOverflow.ellipsis,
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
