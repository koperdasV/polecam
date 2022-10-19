// ignore_for_file: use_super_parameters

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/home/components/categorie_list_widget.dart';
import 'package:polec/src/ui/home/components/categorie_tag.dart';
import 'package:polec/src/ui/home/components/percent_widget.dart';

class OkolicyPage extends StatelessWidget {
  const OkolicyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          const CupertinoSliverNavigationBar(
            largeTitle: Text(
              'W Okolicy',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: CupertinoSearchTextField(),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 70,
              child: CategorieList(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Column(
                  children: [
                    Padding(
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
                                      tag: 'Kuchnia tajska',
                                    ),
                                    CategorieTag(
                                      tag: 'Jedzenie',
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
                  ],
                );
              },
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
