// ignore_for_file: use_super_parameters

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/feature/map/widget/map_screen.dart';
import 'package:polec/src/ui/home/blocs/categories/categories_bloc.dart';
import 'package:polec/src/ui/home/widget/components/categorie_list_widget.dart';
import 'package:polec/src/ui/home/widget/components/categorie_tag.dart';
import 'package:polec/src/ui/home/widget/components/home_app_bar.dart';
import 'package:polec/src/ui/home/widget/components/horizontal_list_scroll.dart';
import 'package:polec/src/ui/home/widget/components/in_active_button.dart';
import 'package:polec/src/ui/home/widget/components/search_widget.dart';
import 'package:polec/src/ui/home/widget/components/title_widget.dart';
import 'package:polec/src/ui/home/widget/components/your_area_list.dart';
import 'package:polec/src/ui/inYourArea/in_your_area_page.dart';
import 'package:polec/src/ui/recommended/recommended_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 50, bottom: 15),
            child: HomeAppBar(
              onTap: () => Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const MapScreen(),
                ),
              ),
              child: const Icon(
                CupertinoIcons.map_fill,
                color: CupertinoColors.white,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: SearchWidget(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: InActiveButton(
              text: 'Inactive Account',
            ),
          ),
          Expanded(
            child: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 70,
                    child: CategoriesList(),
                  ),
                ),
                SliverToBoxAdapter(
                  child: TitleWidget(
                    title: 'Recommended for you',
                    subTitle: 'All',
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const RecommendedPage(),
                        ),
                      );
                    },
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 280,
                    child: HorizontalListScroll(
                      child: Row(
                        children: const [
                          CategorieTag(
                            tag: 'Food',
                          ),
                          CategorieTag(
                            tag: 'Asia',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: TitleWidget(
                    title: 'In your area',
                    subTitle: 'All',
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => const YourAreaPage(),
                        ),
                      );
                    },
                  ),
                ),
                //IN YOUR AREA//
                const SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(left: 16),
                    child: SizedBox(
                      height: 280,
                      child: YourAreaList(),
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
