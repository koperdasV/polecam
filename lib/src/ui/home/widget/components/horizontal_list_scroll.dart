import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/ui/home/blocs/recommended/recommended_bloc.dart';
import 'package:polec/src/ui/home/model/recommended/recommended_model.dart';
import 'package:polec/src/ui/home/widget/components/card.dart';

class HorizontalListScroll extends StatelessWidget {
  const HorizontalListScroll({
    Key? key,
    this.fontSize = 34,
    required this.itemCount,
    required this.tmp,
  }) : super(key: key);

  final double? fontSize;
  final int itemCount;
  final List<RecommendedModel> tmp;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RecommendedBloc, RecommendedState>(
      listener: (context, state) {
        if (state.status == RecommendedStateStatus.failure &&
            state.errorMessage.isNotEmpty) {
          context.showErrorBar<String>(
            content: Text(state.errorMessage),
          );
        }
      },
      builder: (context, state) {
        if (state.status == RecommendedStateStatus.loading) {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        } else {
          return ListView.builder(
            padding: const EdgeInsets.only(left: 16),
            scrollDirection: Axis.horizontal,
            itemCount: itemCount,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: CardWidget(
                  tmp: tmp[index],
                  fontSize: fontSize,
                ),
              );
            },
          );
        }
      },
    );
  }
}
