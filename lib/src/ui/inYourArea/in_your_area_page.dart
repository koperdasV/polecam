import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/ui/home/blocs/blocs.dart';

import 'package:polec/src/ui/inYourArea/components/card.dart';
import 'package:polec/src/ui/recommended/components/categorie_list_box.dart';
import 'package:polec/src/ui/recommended/components/cupertino_nav_bar.dart';
import 'package:polec/src/ui/recommended/components/search_box.dart';

class YourAreaPage extends StatelessWidget {
  const YourAreaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavBar(
        title: 'In your Area',
      ),
      child: BlocBuilder<YourAreaBloc, YourAreaState>(
        builder: (context, state) {
          return Column(
            children: [
              const SearchBox(),
              const CategorieListBox(),
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: state.yourArea.length,
                        (context, index) => CardWidget(
                          tmp: state.yourArea[index],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
