import 'package:flutter/cupertino.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/feature/details/widget/details_screen.dart';
import 'package:polec/src/ui/home/model/recommended/recommended_model.dart';
import 'package:polec/src/ui/home/widget/components/categorie_tag.dart';
import 'package:polec/src/ui/home/widget/components/percent_widget.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.tmp,
  }) : super(key: key);

  final RecommendedModel tmp;

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
                    image: tmp.image.toString(),
                    regularFee: tmp.regularFee,
                    name: tmp.name.toString(),
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
                  percent: tmp.regularFee.toString(),
                  fontSize: 34,
                ),
                // Positioned(
                //   right: 0,
                //   bottom: 0,
                //   child: Row(
                //     children: [
                //       CategorieTag(
                //         tag: tmp.category.toList(),
                //       ),
                //       // CategorieTag(
                //       //   tag: 'Food',
                //       // ),
                //     ],
                //   ),
                // ),
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
