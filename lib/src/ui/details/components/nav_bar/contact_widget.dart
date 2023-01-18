import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/details/bloc/details_bloc.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

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
        notFound: () => const Center(
          child: Text('not found product by id'),
        ),
        loaded: (productDetails) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              ContactTile(
                title: 'Street: ',
                subTitle: productDetails.address[0].street,
              ),
              ContactTile(
                title: 'City: ',
                subTitle: productDetails.address[0].city,
              ),
              ContactTile(
                title: 'Country: ',
                subTitle: productDetails.address[0].country,
              ),
              ContactTile(
                title: 'Phones: ',
                subTitle: productDetails.address[0].phones[0],
              ),
            ],
          ),
        ),
        error: (errorMessage) => const Center(child: FlutterLogo()),
      ),
    );
  }
}

class ContactTile extends StatelessWidget {
  const ContactTile({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 70,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: AppColor.subTitleColor,
            ),
          ),
        ),
        Flexible(
          child: Text(
            subTitle,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.normal,
              color: AppColor.subTitleColor,
            ),
          ),
        ),
      ],
    );
  }
}
