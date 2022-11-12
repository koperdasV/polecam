import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/ui/home/bloc/categories_bloc.dart';
import 'package:polec/src/ui/home/widget/components/card.dart';

class HorizontalListScroll extends StatelessWidget {
  const HorizontalListScroll({
    Key? key,
    required this.image,
    this.fontSize = 34,
    this.child,
    required this.textTitle,
    required this.textSubtitle,
    this.scrollDirection = Axis.horizontal, this.width,
  }) : super(key: key);

  final String image;
  final String textTitle;
  final String textSubtitle;

  final double? fontSize;
  final double? width;
  final Widget? child;
  final Axis? scrollDirection;

  @override
  Widget build(BuildContext context) {
    final recommended = context.read<CategoriesBloc>().state.recommended;

    return ListView.builder(
      scrollDirection: scrollDirection!,
      itemCount: recommended.length,
      itemBuilder: (context, index) {
        if (index >= recommended.length) {
          BlocBuilder<CategoriesBloc, CategoriesState>(
            builder: (context, state) {
              return state.status == CategoriesStateStatus.loading
                  ? const Center(
                      child: CupertinoActivityIndicator(),
                    )
                  : const Center();
            },
          );
        }
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: CardWidget(
            width: width,
            tmp: recommended[index],
            image: recommended[index].image.toString(),
            fontSize: fontSize,
            textTitle: recommended[index].name.toString(),
            textSubtitle: textSubtitle,
            child: child,
          ),
        );
      },
    );
  }
}
