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

class CardFavorites extends StatefulWidget {
  const CardFavorites({
    Key? key,
    required this.tmp,
  }) : super(key: key);

  final FavoritesModel tmp;

  @override
  State<CardFavorites> createState() => _CardFavoritesState();
}

class _CardFavoritesState extends State<CardFavorites> {
  @override
  Widget build(BuildContext context) {
    final amountParse = (widget.tmp.regularFee) * 100;
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
                      productId: widget.tmp.id,
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
                      widget.tmp.image,
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
                    tag: widget.tmp.category,
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
              widget.tmp.name,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Text(
            maxLines: 1,
            widget.tmp.description,
            style: TextStyle(
              fontSize: 12,
              color: AppColor.subTitleColor,
              fontWeight: FontWeight.normal,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

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
}
