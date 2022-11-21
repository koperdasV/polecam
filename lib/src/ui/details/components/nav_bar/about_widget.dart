// ignore_for_file: lines_longer_than_80_chars

import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/details/bloc/details_bloc.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({
    super.key,
    this.about = '',
  });

  final String about;

  @override
  Widget build(BuildContext context) {
    // final detailModel = context.read<DetailsBloc>().state.detailModel;
    // if (detailModel == null) return const SizedBox.shrink();
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
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SizedBox(
              width: double.infinity,
              // height: 140,
              child: Text(
                state.detailModel.description.toString(),
                style: TextStyle(
                  color: AppColor.subTitleColor,
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
              ),
            ),
          );
        } else {
          return const Text('No data');
        }
      },
    );
  }
}
