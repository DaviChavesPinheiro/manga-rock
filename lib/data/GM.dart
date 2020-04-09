import 'package:manga_rock/models/manga_profile.dart';
import 'package:scoped_model/scoped_model.dart';

class GM extends Model {
  Set<MangaProfile> _favoritos = <MangaProfile>{};

  Set<MangaProfile> get favoritos {
    print("getFavoritos");
    return _favoritos;
  }

  void addFavorite(MangaProfile mangaProfile) {
    favoritos.add(mangaProfile);
    notifyListeners();
  }
}
