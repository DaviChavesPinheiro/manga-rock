import 'package:manga_rock/models/manga_profile.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:manga_rock/data/DATA.dart';

class GM extends Model {
  Set<String> _favoritos = <String>{};

  Set<String> get favoritos{
    return _favoritos;
  }

  // Set<MangaProfile> get favoritesMangaProfiles{
  //   print("getFavoritos");
  //   return Set.from(_favoritos.map((title){
  //     return titleToMangaProfile(title);
  //   }));
  // }

  void loadFavorites() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _favoritos = Set.from(prefs.getStringList('favorites') ?? []);
    print(prefs.getStringList('favorites'));
  }

  void addFavorite(String id) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    favoritos.add(id);
    prefs.setStringList('favorites', favoritos.toList());
    notifyListeners();
    print(prefs.getStringList('favorites'));
  }

  void removeFavorite(String id) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    favoritos.remove(id);
    // favoritos.removeAll(Set.from(prefs.getStringList('favorites'))); Remove All
    prefs.setStringList('favorites', favoritos.toList());
    notifyListeners();
    print(prefs.getStringList('favorites'));
  }
}
