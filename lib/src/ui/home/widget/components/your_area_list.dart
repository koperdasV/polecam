import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/ui/home/blocs/yourArea/your_area_bloc.dart';
import 'package:polec/src/ui/home/widget/components/your_area_card.dart';

class YourAreaList extends StatelessWidget {
  const YourAreaList({
    Key? key,
    this.fontSize = 34,
    this.child,
    this.width,
  }) : super(key: key);

  final double? fontSize;
  final double? width;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<YourAreaBloc, YourAreaState>(
      listener: (context, state) {
        if (state.status == YourAreaStateStatus.failure &&
            state.errorMessage.isNotEmpty) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(content: Text(state.errorMessage)));
        }
      },
      child: BlocBuilder<YourAreaBloc, YourAreaState>(
        builder: (context, state) {
          if (state.status == YourAreaStateStatus.loading) {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          } else {
            return ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              scrollDirection: Axis.horizontal,
              itemCount: state.yourArea.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 14),
                  child: YourAreaCard(
                    tmp: state.yourArea[index],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
