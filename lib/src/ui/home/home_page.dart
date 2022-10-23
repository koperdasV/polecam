// ignore_for_file: use_super_parameters

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/home/components/categorie_list_widget.dart';
import 'package:polec/src/ui/home/components/categorie_tag.dart';
import 'package:polec/src/ui/home/components/horizontal_list_scroll.dart';
import 'package:polec/src/ui/home/components/in_active_button.dart';
import 'package:polec/src/ui/home/components/title_widget.dart';
import 'package:polec/src/ui/inYourArea/in_your_area_page.dart';
import 'package:polec/src/ui/recommended/recommended_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello Adam',
                    style: TextStyle(
                      color: AppColor.titleColor,
                      fontSize: 24,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'You have ',
                      style: TextStyle(
                        color: AppColor.titleColor,
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: r'72,49$',
                          style: TextStyle(
                            color: AppColor.categorieTextColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: CupertinoSearchTextField(
              suffixIcon: Icon(
                CupertinoIcons.search,
                color: Colors.black,
              ),
              suffixMode: OverlayVisibilityMode.always,
              suffixInsets: EdgeInsetsDirectional.fromSTEB(0, 0, 25, 2),
              prefixIcon: SizedBox(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: InActiveButton(),
          ),
          CustomScrollView(
            shrinkWrap: true,
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
                  height: 300,
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
                  height: 300,
                  child: HorizontalListScroll(
                    image: 'assets/fake_images/food_okolice.png',
                    textTitle: 'Spicy Salad',
                    textSubtitle: 'Recommended: 142',
                    fontSize: 22,
                    child: CupertinoButton(
                      onPressed: () {},
                      child: const Icon(
                        CupertinoIcons.heart,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
