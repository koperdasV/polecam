import 'package:flutter/cupertino.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/feature/details/widget/details_screen.dart';
import 'package:polec/src/ui/home/model/recommended/recommended_model.dart';
import 'package:polec/src/ui/home/widget/components/percent_widget.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.image,
    this.fontSize,
    this.child,
    required this.textTitle,
    required this.textSubtitle,
    required this.tmp,
    this.height = 180,
    this.width,
    // required this.cardImage,
    // this.recommend,
    // required this.name,
  }) : super(key: key);

  final String image;
  final String textTitle;
  final String textSubtitle;
  final double? fontSize;
  final double? height;
  final double? width;
  final Widget? child;

  // final String cardImage;
  // final String? recommend;
  // final String name;

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
                  regularFee: tmp.regularFee.toString(),
                  name: tmp.name.toString(),
                ),
              ),
            );
          },
          child: Stack(
            children: [
              SizedBox(
                width: width,
                height: height,
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
                right: 0,
                bottom: 0,
                child: child!,
              ),
            ],
          ),
        ),
        Container(
          width: 160,
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              textTitle,
              maxLines: 1,
              style: const TextStyle(
                overflow: TextOverflow.ellipsis,
                fontSize: 18,
              ),
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
    );
  }
}
