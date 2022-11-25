import 'package:flutter/cupertino.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/feature/details/widget/details_screen.dart';
import 'package:polec/src/ui/favorites/model/favorite_model.dart';
import 'package:polec/src/ui/home/widget/components/percent_widget.dart';

class FavoriteCardWidget extends StatelessWidget {
  const FavoriteCardWidget({
    Key? key,
    this.fontSize,
    this.child,
    required this.tmp,
  }) : super(key: key);

  final double? fontSize;
  final Widget? child;

  final FavoritesModel tmp;

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
                  description: tmp.description.toString(),
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
                right: 0,
                bottom: 0,
                child: child!,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 160,
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              tmp.name.toString(),
              maxLines: 1,
              style: const TextStyle(
                overflow: TextOverflow.ellipsis,
                fontSize: 18,
              ),
            ),
          ),
        ),
        Text(
          'recommended.toString()',
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
