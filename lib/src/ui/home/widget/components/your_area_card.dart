import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/feature/details/widget/details_screen.dart';
import 'package:polec/src/ui/details/bloc/details_bloc.dart';
import 'package:polec/src/ui/details/data/detail_repository.dart';
import 'package:polec/src/ui/home/model/yourArea/your_area_model.dart';
import 'package:polec/src/ui/home/widget/components/percent_widget.dart';

class YourAreaCard extends StatefulWidget {
  const YourAreaCard({
    Key? key,
    this.height,
    this.width,
    this.child,
    required this.tmp,
  }) : super(key: key);

  final double? height;
  final double? width;
  final Widget? child;

  final YourAreaModel tmp;

  @override
  State<YourAreaCard> createState() => _YourAreaCardState();
}

class _YourAreaCardState extends State<YourAreaCard> {
  @override
  Widget build(BuildContext context) {
    final amountParse = (widget.tmp.regularFee) * 100;
    final percent = amountParse.toInt();
    return Column(
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
                    productType: 'yourArea',
                  ),
                ),
              ),
            );
          },
          child: Stack(
            children: [
              SizedBox(
                height: 190,
                width: 166,
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
                fontSize: 24,
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
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SizedBox(
            width: 166,
            child: Text(
              widget.tmp.name,
              maxLines: 1,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
                letterSpacing: 0.7,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 160,
          child: Text(
            'Recommended: ${widget.tmp.recommended}',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 12,
              color: Color(0xFF9fa2b1),
              fontWeight: FontWeight.normal,
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
