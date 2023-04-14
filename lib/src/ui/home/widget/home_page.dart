// ignore_for_file: use_super_parameters
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/feature/home/provider/navigation_bar_provider.dart';
import 'package:polec/src/feature/map/widget/map_screen.dart';
import 'package:polec/src/feature/profile/provider/profile_provider.dart';
import 'package:polec/src/ui/home/model/recommended/recommended_model.dart';
import 'package:polec/src/ui/home/widget/components/categorie_list_widget.dart';
import 'package:polec/src/ui/home/widget/components/home_app_bar.dart';
import 'package:polec/src/ui/home/widget/components/horizontal_list_scroll.dart';
import 'package:polec/src/ui/home/widget/components/in_active_button.dart';
import 'package:polec/src/ui/home/widget/components/search_widget.dart';
import 'package:polec/src/ui/home/widget/components/title_widget.dart';
import 'package:polec/src/ui/home/widget/components/your_area_list.dart';
import 'package:polec/src/ui/in_your_area/in_your_area_page.dart';
import 'package:polec/src/ui/profile/components/nav_bar/navigation_bar.dart';
import 'package:polec/src/ui/recommended/recommended_page.dart';
import 'package:provider/provider.dart';

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
        final offerName = products.name.toLowerCase();
        final companyName = products.name.toLowerCase();
        final description = products.description.toLowerCase();
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
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: CupertinoPageScaffold(
        child: Column(
          children: [
            ColoredBox(
              color: AppColor.navBarColor,
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, top: 50, bottom: 15),
                    child: HomeAppBar(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => const MapScreen(),
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
                    padding: const EdgeInsets.symmetric(horizontal: 9),
                    child: SearchWidget(
                      controller: _searchController,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Container(
                      width: double.infinity,
                      height: 1.5,
                      color: Colors.grey.shade300,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 12),
              child: InActiveButton(
                text: 'Inactive Account',
                onPressed: () {
                  Provider.of<BottomNavigationBarProvider>(
                    context,
                    listen: false,
                  ).updatePageSelection(3);
                  Provider.of<SlidingBarProvider>(context, listen: false)
                      .updateSegment(Account.account);
                  Provider.of<SlidingBarProvider>(context, listen: false)
                      .visibleMarker(visible: true);
                },
              ),
            ),
            Expanded(
              child: CustomScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
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
                      height: 250,
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
                    child: SizedBox(
                      height: 250,
                      child: YourAreaList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
