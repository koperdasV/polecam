// ignore_for_file: use_super_parameters

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/feature/map/widget/map_screen.dart';
import 'package:polec/src/ui/home/components/categorie_list_widget.dart';
import 'package:polec/src/ui/home/components/categorie_tag.dart';
import 'package:polec/src/ui/home/components/home_app_bar.dart';
import 'package:polec/src/ui/home/components/horizontal_list_scroll.dart';
import 'package:polec/src/ui/home/components/in_active_button.dart';
import 'package:polec/src/ui/home/components/search_widget.dart';
import 'package:polec/src/ui/home/components/title_widget.dart';
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
                color: Colors.white,
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
                    child: CategorieList(),
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
                      image: 'assets/fake_images/food_polecane.png',
                      textTitle: 'Thai beef fried rice',
                      textSubtitle: 'Polecone przez: Paweł Woźniak',
                      child: Row(
                        children: const [
                          CategorieTag(
                            tag: 'Thai cuisine',
                          ),
                          CategorieTag(
                            tag: 'Food',
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
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 280,
                    child: HorizontalListScroll(
                      image: 'assets/fake_images/food_okolice.png',
                      textTitle: 'Spicy Salad',
                      textSubtitle: 'Recommended: 142',
                      fontSize: 22,
                      child: CupertinoButton(
                        borderRadius: BorderRadius.circular(100),
                        onPressed: () {},
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColor.favoriteButtonColor,
                          ),
                          child: Center(
                            child: Icon(
                              CupertinoIcons.heart,
                              color: AppColor.textButtonColor,
                            ),
                          ),
                        ),
                      ),
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
