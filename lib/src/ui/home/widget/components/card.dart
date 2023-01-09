// ignore_for_file: always_declare_return_types, inference_failure_on_function_return_type

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/feature/details/widget/details_screen.dart';
import 'package:polec/src/ui/details/bloc/details_bloc.dart';
import 'package:polec/src/ui/details/data/detail_repository.dart';
import 'package:polec/src/ui/home/model/recommended/recommended_model.dart';
import 'package:polec/src/ui/home/widget/components/categorie_tag.dart';
import 'package:polec/src/ui/home/widget/components/percent_widget.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({
    Key? key,
    this.fontSize,
    required this.tmp,
  }) : super(key: key);

  final double? fontSize;

  final RecommendedModel tmp;

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    final amountParse = (widget.tmp.regularFee) * 100;
    final percent = amountParse.toInt();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
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
                      productType: 'recommended',
                    ),
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
                      widget.tmp.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                PercentWidget(
                  percent: percent.toString(),
                  fontSize: widget.fontSize,
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: CupertinoButton(
                    borderRadius: BorderRadius.circular(100),
                    onPressed: _addFavorites,
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
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: CategorieTag(
                    tag: widget.tmp.category.toList(),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 250,
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                widget.tmp.name,
                maxLines: 1,
                style: const TextStyle(
                  overflow: TextOverflow.clip,
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 0.7,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 250,
            child: Text(
              widget.tmp.description,
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
      ),
    );
  }

  void _addFavorites() {
    MotionToast(
      displaySideBar: false,
      displayBorder: true,
      backgroundType: BackgroundType.solid,
      primaryColor: AppColor.textButtonColor,
      width: 230,
      height: 50,
      toastDuration: const Duration(seconds: 2),
      description: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            CupertinoIcons.heart_fill,
            color: Colors.white,
          ),
          SizedBox(
            width: 14,
          ),
          Text(
            'Added to favorites',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    ).show(context);
  }
}
