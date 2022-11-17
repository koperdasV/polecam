import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/ui/favorites/bloc/favorites_bloc.dart';
import 'package:polec/src/ui/favorites/components/card.dart';
import 'package:polec/src/ui/journal/widget/components/cupertino_app_bar.dart';

import 'package:polec/src/ui/recommended/components/categorie_list_box.dart';
import 'package:polec/src/ui/recommended/components/search_box.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CupertinoAppBar(
        title: 'Favorite',
        child: const SearchBox(),
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
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          childCount: state.favorites.length,
                          (context, index) => CardFavorites(
                            tmp: state.favorites[index],
                          ),
                        ),
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
