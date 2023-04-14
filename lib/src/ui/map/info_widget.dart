import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/feature/details/widget/details_screen.dart';
import 'package:polec/src/feature/not_recommend/widget/not_recomend_screen.dart';
import 'package:polec/src/ui/details/bloc/details_bloc.dart';
import 'package:polec/src/ui/details/data/detail_repository.dart';
import 'package:polec/src/ui/home/model/recommended/recommended_model.dart';
import 'package:polec/theme/app_colors.dart';

class InfoCardWidget extends StatelessWidget {
  const InfoCardWidget({
    super.key,
    required this.color,
    required this.tmp,
  });
  final Color color;
  final RecommendedModel tmp;

  @override
  Widget build(BuildContext context) {
    final amountParse = (tmp.regularFee) * 100;
    final percent = amountParse.toInt();
    final colorInfo =
        tmp.id == "recomendedIdFirst" || tmp.id == "recomendedIdSecond"
            ? Colors.white
            : AppColors.bgMapInfo;
    final colorInfoText =
        colorInfo == Colors.white ? AppColor.subTitleColor : Colors.black;

    return GestureDetector(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: colorInfo,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 8,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                tmp.name,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w900,
                ),
                maxLines: 1,
              ),
              Text(
                'Recommended by: Paweł Woźniak',
                style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.normal,
                  color: colorInfoText,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '${percent}%',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                tmp.address[0].street,
                style: TextStyle(
                  fontSize: 9,
                  fontWeight: FontWeight.normal,
                  color: colorInfoText,
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        //if (color == Colors.white) {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => BlocProvider<DetailsBloc>(
              create: (context) => DetailsBloc(detailsRepo: DetailRepository()),
              child: tmp.id == "recomendedIdFirst" ||
                      tmp.id == "recomendedIdSecond"
                  ? DetailsScreen(
                      productId: tmp.id,
                      productType: 'recommended',
                    )
                  : NotRecommendScreen(
                      productId: tmp.id,
                      productType: 'recommended',
                    ),
            ),
          ),
        );
      },
    );
  }
}
