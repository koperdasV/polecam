import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/details/models/detail_model.dart';
import 'package:polec/src/ui/home/widget/components/categorie_tag.dart';
import 'package:polec/src/ui/home/widget/components/percent_widget.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({
    super.key,
    required this.image,
    this.regularFee = 0,
    required this.detailModel,
  });

  final String image;
  final int? regularFee;
  final DetailModel detailModel;

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
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
              widget.image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        PercentWidget(
          percent: widget.regularFee.toString(),
          fontSize: 34,
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: Row(
            children: [
              CategorieTag(
                tag: widget.detailModel.category,
              ),
            ],
          ),
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
      ],
    );
  }

  void _addFavorites() {
    MotionToast(
      displaySideBar: false,
      displayBorder: true,
      primaryColor: AppColor.textButtonColor,
      backgroundType: BackgroundType.solid,
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
