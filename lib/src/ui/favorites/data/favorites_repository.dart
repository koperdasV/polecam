import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:polec/src/ui/favorites/model/favorite_model.dart';

mixin IFavoritesRepo {
  Future<List<FavoritesModel>> fetchFavorite();
}

class FavoritesRepository implements IFavoritesRepo {
  @override
  Future<List<FavoritesModel>> fetchFavorite() async {
    final response = await rootBundle.loadString('assets/favourites.json');
    final json = jsonDecode(response) as List<dynamic>;
    final favorites = json
        .map((e) => FavoritesModel.fromJson(e as Map<String, dynamic>))
        .toList();
    return favorites;
  }
}
