import 'package:flutter/cupertino.dart';
import 'package:polec/src/ui/home/widget/components/categorie_tag.dart';
import 'package:polec/src/ui/home/widget/components/percent_widget.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required this.image,
    this.regularFee = 0,
    required this.tag,
  });

  final String image;
  final double? regularFee;

  final List<String> tag;

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
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        PercentWidget(
          percent: regularFee.toString(),
          fontSize: 34,
        ),
        Positioned(
          left: 0,
          bottom: 0,
          child: CategorieTag(
            tag: tag,
          ),
        ),
      ],
    );
  }
}
