// ignore_for_file: inference_failure_on_function_return_type

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/feature/details/widget/details_screen.dart';
import 'package:polec/src/ui/details/bloc/details_bloc.dart';
import 'package:polec/src/ui/details/data/detail_repository.dart';
import 'package:polec/src/ui/favorites/model/favorite_model.dart';
import 'package:polec/src/ui/home/widget/components/categorie_tag.dart';
import 'package:polec/src/ui/home/widget/components/percent_widget.dart';

class CardFavorites extends StatelessWidget {
  const CardFavorites({super.key, required this.tmp});
  final FavoritesModel tmp;

  @override
  Widget build(BuildContext context) {
    void _removedFavorites() {
      MotionToast(
        displaySideBar: false,
        primaryColor: AppColor.textButtonColor,
        backgroundType: BackgroundType.solid,
        width: 250,
        height: 50,
        description: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              CupertinoIcons.heart,
              color: Colors.white,
            ),
            SizedBox(
              width: 14,
            ),
            Text(
              'Removed from favorites',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ).show(context);
    }

    final amountParse = (tmp.regularFee) * 100;
    final percent = amountParse.toInt();
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => BlocProvider<DetailsBloc>(
                    create: (context) =>
                        DetailsBloc(detailsRepo: DetailRepository()),
                    child: DetailsScreen(
                      productId: tmp.id,
                      productType: 'favourites',
                    ),
                  ),
                ),
              );
            },
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 190,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      tmp.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                PercentWidget(
                  percent: percent.toString(),
                  fontSize: 34,
                ),
                Positioned(
                  bottom: 0,
                  child: CategorieTag(
                    tag: tmp.category,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: CupertinoButton(
                    borderRadius: BorderRadius.circular(100),
                    onPressed: _removedFavorites,
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
                          color: AppColor.textButtonColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              tmp.name,
              maxLines: 1,
              style: TextStyle(
                overflow: TextOverflow.clip,
                fontSize: 18,
                fontWeight: FontWeight.w900,
                color: AppColor.titleColor,
                letterSpacing: 0.6,
                fontFamily: 'SFProDisplay',
              ),
            ),
          ),
          Text(
            maxLines: 1,
            'Recommend by: ${tmp.recommendations[0].name} ${tmp.recommendations[0].surname}',
            style: TextStyle(
              fontSize: 12,
              color: AppColor.subTitleColor,
              fontWeight: FontWeight.normal,
              overflow: TextOverflow.ellipsis,
              fontFamily: 'SFProDisplay',
            ),
          ),
        ],
      ),
    );
  }
}
