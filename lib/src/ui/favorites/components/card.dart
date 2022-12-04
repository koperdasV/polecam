// ignore_for_file: inference_failure_on_function_return_type

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/feature/details/widget/details_screen.dart';
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
  FToast? fToast;

  @override
  void initState() {
    fToast = FToast();
    fToast!.init(context);
    super.initState();
  }

  _showToast() {
    final toast = Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: LinearGradient(colors: AppColor.inActiveButtonColor),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Icon(
            CupertinoIcons.heart_fill,
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
    );

    fToast!.showToast(
      child: toast,
      gravity: ToastGravity.BOTTOM,
    );
  }

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
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => DetailsScreen(
                    image: widget.tmp.image.toString(),
                    regularFee: widget.tmp.regularFee,
                    name: widget.tmp.name.toString(),
                    tag: widget.tmp.category,
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
                      widget.tmp.image.toString(),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                PercentWidget(
                  percent: widget.tmp.regularFee.toString(),
                  fontSize: 34,
                ),
                Positioned(
                  bottom: 0,
                  child: CategorieTag(
                    tag: widget.tmp.category!,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: CupertinoButton(
                    borderRadius: BorderRadius.circular(100),
                    onPressed: _showToast,
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
              widget.tmp.name.toString(),
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Text(
            maxLines: 1,
            widget.tmp.description.toString(),
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
}
