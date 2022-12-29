import 'dart:convert';

import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/ui/favorites/bloc/favorites_bloc.dart';
import 'package:polec/src/ui/favorites/components/card.dart';
import 'package:polec/src/ui/favorites/model/favorite_model.dart';
import 'package:polec/src/ui/journal/widget/components/cupertino_app_bar.dart';

import 'package:polec/src/ui/recommended/components/categorie_list_box.dart';
import 'package:polec/src/ui/recommended/components/search_box.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  final _searchController = TextEditingController();
  var _filteredProducts = <FavoritesModel>[];

  Future<void> _searchProducts() async {
    final response = await rootBundle.loadString('assets/favourites.json');
    final json = jsonDecode(response) as List<dynamic>;
    final _favorites = json
        .map((e) => FavoritesModel.fromJson(e as Map<String, dynamic>))
        .toList();

    final query = _searchController.text.toLowerCase();
    if (query.isNotEmpty) {
      // RECOMMENDED SEARCH //
      _filteredProducts = _favorites.where((products) {
        final offerName = products.name.toLowerCase();
        final companyName = products.name.toLowerCase();
        final description = products.description.toLowerCase();
        return offerName.contains(query) ||
            companyName.contains(query) ||
            description.contains(query);
      }).toList();
    } else {
      _filteredProducts = _favorites;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _searchProducts();
    _searchController.addListener(_searchProducts);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoAppBar(
        title: 'Favorite',
        child: SearchBox(
          controller: _searchController,
        ),
      ),
      body: BlocBuilder<FavoriteBloc, FavoriteState>(
        builder: (context, state) {
          if (state.status == FavoriteStateStatus.failure &&
              state.errorMessage.isNotEmpty) {
            context.showErrorBar<String>(
              content: Text(state.errorMessage),
            );
          }
          if (state.status == FavoriteStateStatus.loading) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          }
          if (state.status == FavoriteStateStatus.success) {
            return Column(
              children: [
                const CategorieListBox(),
                Expanded(
                  child: CustomScrollView(
                    slivers: [
                      FavoritesList(
                        filteredProducts: _filteredProducts,
                        tmp: _filteredProducts,
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return const Center(
              child: Text('No data'),
            );
          }
        },
      ),
    );
  }
}

class FavoritesList extends StatelessWidget {
  const FavoritesList({
    Key? key,
    required List<FavoritesModel> filteredProducts,
    required this.tmp,
  })  : _filteredProducts = filteredProducts,
        super(key: key);

  final List<FavoritesModel> _filteredProducts;
  final List<FavoritesModel> tmp;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: _filteredProducts.length,
        (context, index) => CardFavorites(
          tmp: tmp[index],
        ),
      ),
    );
  }
}
