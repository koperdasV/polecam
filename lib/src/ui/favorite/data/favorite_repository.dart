import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:polec/src/ui/favorite/model/favorite_model.dart';

abstract class IFavoriteRepo {
  Future<List<FavoriteModel>> fetchFavorite();
}

class FavoriteRepository implements IFavoriteRepo {
  @override
  Future<List<FavoriteModel>> fetchFavorite() async {
    final response = await rootBundle.loadString('assets/favourites.json');
    final json = jsonDecode(response) as List<dynamic>;
    final favorite = json
        .map((e) => FavoriteModel.fromJson(e as Map<String, dynamic>))
        .toList();
    return favorite;
  }
}
