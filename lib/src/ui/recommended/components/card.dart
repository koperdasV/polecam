import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/home/widget/components/categorie_tag.dart';
import 'package:polec/src/ui/home/widget/components/percent_widget.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.image,
    required this.textTitle,
    required this.textSubtitle,
    required this.percent,
  }) : super(key: key);

  final String image;
  final String textTitle;
  final String textSubtitle;
  final String percent;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              PercentWidget(
                percent: percent,
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
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              textTitle,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Text(
            textSubtitle,
            style: TextStyle(
              fontSize: 12,
              color: AppColor.subTitleColor,
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
