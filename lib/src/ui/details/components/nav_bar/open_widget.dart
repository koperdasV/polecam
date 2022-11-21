import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/details/bloc/details_bloc.dart';

class OpenWidget extends StatelessWidget {
  const OpenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // final detailModel = context.read<DetailsBloc>().state.detailModel;
    // if (detailModel == null) return const SizedBox.shrink();

    const titleStyle = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    );
    final subtitleStyle = TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: AppColor.subTitleColor,
    );

    return BlocBuilder<DetailsBloc, DetailsState>(
      builder: (context, state) {
        if (state.status == DetailsStateStatus.failure &&
            state.errorMessage.isNotEmpty) {
          context.showErrorBar<String>(
            content: Text(state.errorMessage),
          );
        }
        if (state.status == DetailsStateStatus.loading) {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        }
        if (state.status == DetailsStateStatus.success) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    Text(
                      'Monday: ',
                      style: titleStyle,
                    ),
                    Text(
                      state.detailModel.addresses![0].open!.monday.toString(),
                      style: subtitleStyle,
                    ),
                    Text(
                      'Tuesday: ',
                      style: titleStyle,
                    ),
                    Text(
                      state.detailModel.addresses![0].open!.tuesday.toString(),
                      style: subtitleStyle,
                    ),
                    Text(
                      'Wednesday: ',
                      style: titleStyle,
                    ),
                    Text(
                      state.detailModel.addresses![0].open!.wednesday
                          .toString(),
                      style: subtitleStyle,
                    ),
                    Text(
                      'Thursday: ',
                      style: titleStyle,
                    ),
                    Text(
                      state.detailModel.addresses![0].open!.thursday.toString(),
                      style: subtitleStyle,
                    ),
                    Text(
                      'Friday: ',
                      style: titleStyle,
                    ),
                    Text(
                      state.detailModel.addresses![0].open!.friday.toString(),
                      style: subtitleStyle,
                    ),
                    Text(
                      'Saturday: ',
                      style: titleStyle,
                    ),
                    Text(
                      state.detailModel.addresses![0].open!.saturday.toString(),
                      style: subtitleStyle,
                    ),
                    Text(
                      'Sunday: ',
                      style: titleStyle,
                    ),
                    Text(
                      state.detailModel.addresses![0].open!.sunday.toString(),
                      style: subtitleStyle,
                    ),
                  ],
                )),
          );
        } else {
          return const Text('No data');
        }
      },
    );
  }
}
