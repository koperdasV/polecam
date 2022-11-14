// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/details/bloc/details_bloc.dart';
import 'package:polec/src/ui/home/bloc/home_bloc.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({
    super.key,
    this.about = '',
  });

  final String about;

  @override
  Widget build(BuildContext context) {
    final recommended = context.read<HomeBloc>().state.recommended;
    final detailModel = context.read<DetailsBloc>().state.detailModel;
    if (detailModel == null) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.infinity,
        // height: 140,
        child: Text(
          detailModel.description.toString(),
          style: TextStyle(
            color: AppColor.subTitleColor,
            fontWeight: FontWeight.normal,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
