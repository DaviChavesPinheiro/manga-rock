import 'package:manga_rock/models/manga_profile.dart';
import 'package:scoped_model/scoped_model.dart';

class GM extends Model {
  List<MangaProfile> _favoritos = [];

  List<MangaProfile> get favoritos => _favoritos;

  void addFavorite(MangaProfile mangaProfile){
    favoritos.add(mangaProfile);

    notifyListeners();
  }

}