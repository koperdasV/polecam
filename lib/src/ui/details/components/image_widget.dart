import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/ui/details/bloc/details_bloc.dart';
import 'package:polec/src/ui/home/widget/components/categorie_tag.dart';
import 'package:polec/src/ui/home/widget/components/percent_widget.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final detailModel = context.read<DetailsBloc>().state.detailModel;
    if (detailModel == null) return const SizedBox.shrink();
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            'assets/fake_images/food_polecane.png',
            fit: BoxFit.cover,
          ),
        ),
        PercentWidget(
          percent: detailModel.regularFee.toString(),
          fontSize: 34,
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Row(
            children: const [
              CategorieTag(
                tag: 'Thai cuisine',
              ),
              CategorieTag(
                tag: 'Food',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
