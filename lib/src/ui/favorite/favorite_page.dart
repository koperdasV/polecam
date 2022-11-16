import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/ui/favorite/bloc/favorite_bloc.dart';
import 'package:polec/src/ui/favorite/components/card.dart';
import 'package:polec/src/ui/journal/widget/components/cupertino_app_bar.dart';
import 'package:polec/src/ui/recommended/components/card.dart';

import 'package:polec/src/ui/recommended/components/search_box.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteBloc, FavoriteState>(
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
          return Scaffold(
            appBar: CupertinoAppBar(
              title: 'Favorite',
              child: const SearchBox(),
            ),
            body: Column(
              children: [
                // const CategorieListBox(),
                ListView.builder(
                  // scrollDirection: Axis.vertical,
                  itemCount: state.favorite.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 20,
                      ),
                      child: FavoriteCardWidget(
                        tmp: state.favorite[index],
                      ),

                      // CardWidget(
                      //   image: 'assets/fake_images/food_polecane.png',
                      //   percent: '17%',
                      //   textTitle: 'Thai beef fried rice',
                      //   textSubtitle: 'Polecone przez: Paweł Woźniak',
                      // ),
                    );
                  },
                ),
              ],
            ),
          );
        } else {
          return const Text('Error');
        }
      },
    );
  }
}
