// ignore_for_file: use_super_parameters

import 'package:flutter/cupertino.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/home/components/categorie_list_widget.dart';
import 'package:polec/src/ui/home/components/categorie_tag.dart';
import 'package:polec/src/ui/home/components/konto_button.dart';
import 'package:polec/src/ui/home/components/polecane_list_scroll.dart';
import 'package:polec/src/ui/home/components/title_widget.dart';
import 'package:polec/src/ui/okolicy/okolicy_page.dart';
import 'package:polec/src/ui/polecane/polecane_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Flexible(flex: 0, child: SizedBox(height: 50)),
          Text(
            'Czesc Adam',
            style: TextStyle(
              color: AppColor.titleColor,
              fontSize: 24,
            ),
          ),
          Text(
            'Mazc 72,49 zl',
            style: TextStyle(
              color: AppColor.titleColor,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: CupertinoSearchTextField(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: KontoButton(),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height,
                ),
                child: Column(
                  children: [
                    const CategorieList(),
                    TitleWidget(
                      title: 'Polecane dla Ciebe',
                      subTitle: 'Wszystkie',
                      onPressed: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => const PolecanePage(),
                          ),
                        );
                      },
                    ),
                    PolecaneListScroll(
                      image: 'images/food_polecane.png',
                      textTitle: 'Thai beef fried rice',
                      textSubtitle: 'Polecone przez: Paweł Woźniak',
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
                    TitleWidget(
                      title: 'W okolice',
                      subTitle: 'Wszystkie',
                      onPressed: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => const OkolicyPage(),
                          ),
                        );
                      },
                    ),
                    PolecaneListScroll(
                      image: 'images/food_okolice.png',
                      textTitle: 'Spicy Salad',
                      textSubtitle: 'Polecone: 142',
                      fontSize: 22,
                      child: CupertinoButton(
                        onPressed: () {},
                        child: const Icon(
                          CupertinoIcons.heart,
                        ),
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
