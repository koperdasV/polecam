// ignore_for_file: use_super_parameters

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/home/components/categorie_list_widget.dart';
import 'package:polec/src/ui/home/components/categorie_tag.dart';
import 'package:polec/src/ui/home/components/percent_widget.dart';

class YourAreaPage extends StatelessWidget {
  const YourAreaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        border: Border.all(
          style: BorderStyle.none,
        ),
        middle: const Text(
          'In your Area',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const Padding(
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
          const SizedBox(
            height: 70,
            child: CategorieList(),
          ),
          CustomScrollView(
            shrinkWrap: true,
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: 7,
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
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
