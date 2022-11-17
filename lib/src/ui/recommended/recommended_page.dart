import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/ui/home/blocs/blocs.dart';

import 'package:polec/src/ui/recommended/components/card.dart';
import 'package:polec/src/ui/recommended/components/categorie_list_box.dart';
import 'package:polec/src/ui/recommended/components/cupertino_nav_bar.dart';
import 'package:polec/src/ui/recommended/components/search_box.dart';

class RecommendedPage extends StatelessWidget {
  const RecommendedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavBar(
        title: 'Recommended for you',
      ),
      child: BlocBuilder<RecommendedBloc, RecommendedState>(
        builder: (context, state) {
          if (state.status == RecommendedStateStatus.failure &&
              state.errorMessage.isNotEmpty) {
            context.showErrorBar<String>(content: Text(state.errorMessage));
          }
          if (state.status == RecommendedStateStatus.loading) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          }
          if (state.status == RecommendedStateStatus.success) {
            return Column(
              children: [
                const SearchBox(),
                const CategorieListBox(),
                Expanded(
                  child: CustomScrollView(
                    slivers: [
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          childCount: state.recommended.length,
                          (context, index) => CardWidget(
                            tmp: state.recommended[index],
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
              child: Text('No Data'),
            );
          }
        },
      ),
    );
  }
}
