import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/ui/home/blocs/categories/categories_bloc.dart';
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
    return BlocBuilder<CategoriesBloc, CategoriesState>(
      builder: (context, state) {
        if (state.status == CategoriesStateStatus.loading) {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        }
        if (state.status == CategoriesStateStatus.success) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.yourArea.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: YourAreaCard(
                  tmp: state.yourArea[index],
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
