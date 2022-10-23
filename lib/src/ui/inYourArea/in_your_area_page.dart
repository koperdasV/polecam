import 'package:flutter/cupertino.dart';

import 'package:polec/src/ui/recommended/components/card.dart';
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
      child: Column(
        children: [
          const SearchBox(),
          const CategorieListBox(),
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    childCount: 10,
                    (context, index) => const CardWidget(
                      image: 'assets/fake_images/food_polecane.png',
                      percent: '17%',
                      textTitle: 'Thai beef fried rice',
                      textSubtitle: 'Polecone przez: Paweł Woźniak',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
