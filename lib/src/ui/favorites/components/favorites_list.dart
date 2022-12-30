
import 'package:flutter/material.dart';
import 'package:polec/src/ui/favorites/components/card.dart';
import 'package:polec/src/ui/favorites/model/favorite_model.dart';

class FavoritesList extends StatelessWidget {
  const FavoritesList({
    Key? key,
    required List<FavoritesModel> filteredProducts,
  })  : _filteredProducts = filteredProducts,
        super(key: key);

  final List<FavoritesModel> _filteredProducts;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: _filteredProducts.length,
        (context, index) => CardFavorites(
          tmp: _filteredProducts[index],
        ),
      ),
    );
  }
}