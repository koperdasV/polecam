import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/home/components/categorie_list_widget.dart';
import 'package:polec/src/ui/home/components/categorie_tag.dart';
import 'package:polec/src/ui/home/components/percent_widget.dart';

class RecommendedPage extends StatelessWidget {
  const RecommendedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        border: Border.all(
          style: BorderStyle.none,
        ),
        middle: const Text(
          'Recommended for you',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      child: CustomScrollView(
        slivers: [
          SizedBox(
            height: 400,
            child: CustomScrollView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              slivers: [
                SliverList(
                    delegate: SliverChildListDelegate([
                  const SliverToBoxAdapter(
                    //TODO no scrolling
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: CupertinoSearchTextField(
                        suffixIcon: Icon(
                          CupertinoIcons.search,
                          color: Colors.black,
                        ),
                        suffixInsets: EdgeInsetsDirectional.fromSTEB(0, 0, 25, 2),
                        suffixMode: OverlayVisibilityMode.always,
                        prefixIcon: SizedBox(),
                      ),
                    ),
                  ),
                  const SliverToBoxAdapter(
                    //TODO no scrolling
                    child: SizedBox(
                      height: 70,
                      child: CategorieList(),
                    ),
                  ),
                ])),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 10,
              (context, index) => Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Image.asset(
                            'assets/fake_images/food_polecane.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const PercentWidget(
                          persent: '17%',
                          fontSize: 34,
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
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
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'Thai beef fried rice',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Text(
                      'Polecone przez: Paweł Woźniak',
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColor.subTitleColor,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
