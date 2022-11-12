import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/details/bloc/details_bloc.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final detailModel = context.read<DetailsBloc>().state.detailModel;
    if (detailModel == null) return const SizedBox.shrink();

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

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.infinity,
        height: 140,
        child: Column(
          children: [
            Text(
              'Street:',
              style: titleStyle,
            ),
            Text(
              detailModel.addresses![0].street.toString(),
              style: subtitleStyle,
            ),
            Text(
              'City:',
              style: titleStyle,
            ),
            Text(
              detailModel.addresses![0].city.toString(),
              style: subtitleStyle,
            ),
            Text(
              'Country:',
              style: titleStyle,
            ),
            Text(
              detailModel.addresses![0].country.toString(),
              style: subtitleStyle,
            ),
            Text(
              'Phones:',
              style: titleStyle,
            ),
            Text(
              detailModel.addresses![0].phones![0].toString(),
              style: subtitleStyle,
            ),
          ],
        ),
      ),
    );
  }
}
