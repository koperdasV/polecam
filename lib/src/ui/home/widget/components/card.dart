import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/feature/details/widget/details_screen.dart';
import 'package:polec/src/feature/product_details/bloc/product_details_bloc.dart';
import 'package:polec/src/feature/product_details/widget/product_details.dart';
import 'package:polec/src/ui/details/bloc/details_bloc.dart';
import 'package:polec/src/ui/details/data/detail_repository.dart';
import 'package:polec/src/ui/home/model/recommended/recommended_model.dart';
import 'package:polec/src/ui/home/widget/components/categorie_tag.dart';
import 'package:polec/src/ui/home/widget/components/percent_widget.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    this.fontSize,
    this.child,
    required this.tmp,
  }) : super(key: key);

  final double? fontSize;
  final Widget? child;

  final RecommendedModel tmp;

  @override
  Widget build(BuildContext context) {
    final amountParse = (tmp.regularFee)! * 100.round();
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
                    productId: tmp.id!,
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
                    tmp.image.toString(),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              PercentWidget(
                percent: percent.toString(),
                fontSize: fontSize,
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Row(
                  children: const [
                    CategorieTag(tag: 'Food'),
                    CategorieTag(tag: 'Food'),
                  ],
                ),
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
