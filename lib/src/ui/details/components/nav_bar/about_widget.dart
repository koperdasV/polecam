import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/details/bloc/details_bloc.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DetailsBloc, DetailsState>(
      listener: (context, state) => state.whenOrNull(
        error: (errorMessage) async =>
            context.showErrorBar(content: Text(errorMessage)),
      ),
      builder: (context, state) => state.maybeWhen(
        orElse: () => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
        notFound: () => Center(
          child: Text('not found product by id'),
        ),
        loaded: (productDetails) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            width: double.infinity,
            // height: 140,
            child: Text(
              productDetails.description.toString(),
              style: TextStyle(
                color: AppColor.subTitleColor,
                fontWeight: FontWeight.normal,
                fontSize: 14,
              ),
            ),
          ),
        ),
        error: (errorMessage) => Center(child: FlutterLogo()),
      ),
    );
  }
}
