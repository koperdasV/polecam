import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/feature/details/widget/details_screen.dart';
import 'package:polec/src/ui/details/bloc/details_bloc.dart';
import 'package:polec/src/ui/details/data/detail_repository.dart';
import 'package:polec/src/ui/home/model/yourArea/your_area_model.dart';
import 'package:polec/src/ui/home/widget/components/categorie_tag.dart';
import 'package:polec/src/ui/home/widget/components/percent_widget.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.tmp,
  }) : super(key: key);

  final YourAreaModel tmp;

  @override
  Widget build(BuildContext context) {
    final amountParse = (tmp.regularFee)! * 100.round();
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
                      productId: tmp.id!,
                      productType: 'yourArea',
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
                      tmp.image.toString(),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                PercentWidget(
                  percent: percent.toString(),
                  fontSize: 34,
                ),
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: CategorieTag(
                    tag: tmp.category!,
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
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              tmp.name.toString(),
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Text(
            maxLines: 1,
            tmp.description.toString(),
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
