import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/details/bloc/details_bloc.dart';
import 'package:polec/src/ui/details/models/detail_model.dart';
import 'package:polec/src/ui/home/model/recommended/recommended_model.dart';
import 'package:polec/src/ui/home/widget/components/categorie_tag.dart';
import 'package:polec/src/ui/home/widget/components/percent_widget.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required this.image,
    this.regularFee = 0,
    this.detailModel,
  });

  final String image;
  final int? regularFee;
  final DetailModel? detailModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 210,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        PercentWidget(
          percent: regularFee.toString(),
          fontSize: 34,
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: Row(
            children: [
              CategorieTag(
                tag: detailModel!.category!,
              ),
            ],
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
    );
  }
}
