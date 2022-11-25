import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/ui/home/blocs/recommended/recommended_bloc.dart';
import 'package:polec/src/ui/home/widget/components/card.dart';
import 'package:polec/src/ui/home/widget/components/categorie_tag.dart';

class HorizontalListScroll extends StatelessWidget {
  const HorizontalListScroll({
    Key? key,
    this.fontSize = 34,
    this.child,
  }) : super(key: key);

  final double? fontSize;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecommendedBloc, RecommendedState>(
      builder: (context, state) {
        if (state.status == RecommendedStateStatus.failure &&
            state.errorMessage.isNotEmpty) {
          context.showErrorBar<String>(
            content: Text(state.errorMessage),
          );
        }
        if (state.status == RecommendedStateStatus.loading) {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        }
        if (state.status == RecommendedStateStatus.success) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.recommended.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 20,
                ),
                child: CardWidget(
                  tmp: state.recommended[index],
                  fontSize: fontSize,
                  child: CategorieTag(
                    tag: '${state.recommended[index]}',
                  ),
                ),
              );
            },
          );
        } else {
          return const Text('Error');
        }
      },
    );
  }
}
