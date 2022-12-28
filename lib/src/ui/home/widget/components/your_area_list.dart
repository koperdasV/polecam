import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';
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
    return BlocBuilder<YourAreaBloc, YourAreaState>(
      builder: (context, state) {
        if (state.status == YourAreaStateStatus.failure &&
            state.errorMessage.isNotEmpty) {
          context.showErrorBar<String>(
            content: Text(state.errorMessage),
          );
        }
        if (state.status == YourAreaStateStatus.loading) {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        }
        if (state.status == YourAreaStateStatus.success) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.yourArea.length,
            itemBuilder: (context, index) {
              return YourAreaCard(
                tmp: state.yourArea[index],
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
