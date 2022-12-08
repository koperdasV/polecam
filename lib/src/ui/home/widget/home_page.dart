// ignore_for_file: use_super_parameters

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/feature/profile/widget/profile_screen.dart';
import 'package:polec/src/ui/home/blocs/blocs.dart';
import 'package:polec/src/ui/home/model/recommended/recommended_model.dart';
import 'package:polec/src/ui/home/widget/components/categorie_list_widget.dart';
import 'package:polec/src/ui/home/widget/components/home_app_bar.dart';
import 'package:polec/src/ui/home/widget/components/horizontal_list_scroll.dart';
import 'package:polec/src/ui/home/widget/components/in_active_button.dart';
import 'package:polec/src/ui/home/widget/components/search_widget.dart';
import 'package:polec/src/ui/home/widget/components/title_widget.dart';
import 'package:polec/src/ui/home/widget/components/your_area_list.dart';
import 'package:polec/src/ui/inYourArea/in_your_area_page.dart';
import 'package:polec/src/ui/recommended/recommended_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    this.fontSize = 34,
  });
  final double? fontSize;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _searchController = TextEditingController();
  var _filteredProducts = <RecommendedModel>[];

  Future<void> _searchProducts() async {
    final response = await rootBundle.loadString('assets/recommended.json');
    final json = jsonDecode(response) as List<dynamic>;
    final _recommended = json
        .map((e) => RecommendedModel.fromJson(e as Map<String, dynamic>))
        .toList();

    final query = _searchController.text.toLowerCase();
    if (query.isNotEmpty) {
      // RECOMMENDED SEARCH //
      _filteredProducts = _recommended.where((products) {
        final offerName = products.name!.toLowerCase();
        final companyName = products.name!.toLowerCase();
        final description = products.description!.toLowerCase();
        return offerName.contains(query) ||
            companyName.contains(query) ||
            description.contains(query);
      }).toList();
    } else {
      _filteredProducts = _recommended;
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
    return CupertinoPageScaffold(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 50, bottom: 15),
            child: HomeAppBar(
              onTap: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                );
              },
              child: const Icon(
                CupertinoIcons.map_fill,
                color: CupertinoColors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SearchWidget(
              controller: _searchController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: InActiveButton(
              text: 'Inactive Account',
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => const ProfileScreen(),
                  ),
                );
              },
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
                      itemCount: _filteredProducts.length,
                      tmp: _filteredProducts,
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
