import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/ui/favorites/bloc/favorites_bloc.dart';
import 'package:polec/src/ui/favorites/components/favorites_list.dart';
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
  var _filteredFavorites = <FavoritesModel>[];

  Future<void> _searchFavorites() async {
    final response = await rootBundle.loadString('assets/favourites.json');
    final json = jsonDecode(response) as List<dynamic>;
    final _favorites = json
        .map((e) => FavoritesModel.fromJson(e as Map<String, dynamic>))
        .toList();

    final query = _searchController.text.toLowerCase();
    if (query.isNotEmpty) {
      // RECOMMENDED SEARCH //
      _filteredFavorites = _favorites.where((products) {
        final offerName = products.name.toLowerCase();
        final companyName = products.name.toLowerCase();
        final description = products.description.toLowerCase();
        return offerName.contains(query) ||
            companyName.contains(query) ||
            description.contains(query);
      }).toList();
    } else {
      _filteredFavorites = _favorites;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _searchFavorites();
    _searchController.addListener(_searchFavorites);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: CupertinoAppBar(
          title: 'Favorite',
          child: SearchBox(
            controller: _searchController,
          ),
        ),
        body: BlocListener<FavoriteBloc, FavoriteState>(
          listener: (context, state) {
            if (state.status == FavoriteStateStatus.failure &&
                state.errorMessage.isNotEmpty) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(SnackBar(content: Text(state.errorMessage)));
            }
          },
          child: BlocBuilder<FavoriteBloc, FavoriteState>(
            builder: (context, state) {
              if (state.status == FavoriteStateStatus.loading) {
                return const Center(
                  child: CupertinoActivityIndicator(),
                );
              } else {
                return Column(
                  children: [
                    const CategorieListBox(),
                    Expanded(
                      child: CustomScrollView(
                        keyboardDismissBehavior:
                            ScrollViewKeyboardDismissBehavior.onDrag,
                        slivers: [
                          FavoritesList(
                            filteredProducts: _filteredFavorites,
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
