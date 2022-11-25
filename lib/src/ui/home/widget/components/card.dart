import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/feature/details/widget/details_screen.dart';
import 'package:polec/src/ui/home/model/recommended/recommended_model.dart';
import 'package:polec/src/ui/home/widget/components/categorie_tag.dart';
import 'package:polec/src/ui/home/widget/components/percent_widget.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    this.fontSize,
    this.child,
    required this.tmp,
  }) : super(key: key);

  final double? fontSize;
  final Widget? child;

  final RecommendedModel tmp;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => DetailsScreen(
                  image: tmp.image.toString(),
                  regularFee: tmp.regularFee,
                  name: tmp.name.toString(),
                ),
              ),
            );
          },
          child: Stack(
            children: [
              SizedBox(
                height: 180,
                width: 310,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                    tmp.image.toString(),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              PercentWidget(
                percent: tmp.regularFee.toString(),
                fontSize: fontSize,
              ),
              Positioned(
                left: 0,
                bottom: 0,
                child: CategorieTag(
                  tag: tmp.category.toString(),
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
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
                        CupertinoIcons.heart_fill,
                        color: AppColor.unFavoritesColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 250,
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              tmp.name.toString(),
              maxLines: 1,
              style: const TextStyle(
                overflow: TextOverflow.clip,
                fontSize: 18,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 250,
          child: Text(
            tmp.description.toString(),
            maxLines: 1,
            style: TextStyle(
              fontSize: 12,
              color: AppColor.subTitleColor,
              fontWeight: FontWeight.normal,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }
}

class CategorieWidget extends StatelessWidget {
  const CategorieWidget({
    Key? key,
    required this.tmp,
  }) : super(key: key);

  final RecommendedModel tmp;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        //physics: const NeverScrollableScrollPhysics(),
        itemCount: tmp.category!.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 5,
            vertical: 10,
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: AppColor.categorieColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 7,
              ),
              child: Center(
                child: Text(
                  tmp.category![index],
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
