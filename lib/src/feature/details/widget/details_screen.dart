import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/ui/details/bloc/details_bloc.dart';
import 'package:polec/src/ui/details/details_widget.dart';
import 'package:polec/src/ui/details/models/detail_model.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({
    super.key,
    this.productId = '',
    this.productType = '',
  });

  // final String image;
  // final double? regularFee;
  // final String? recommend;
  // final String name;
  // final String description;
  final String productId;
  final String productType;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  void initState() {
    context.read<DetailsBloc>().add(DetailsEvent.loadProduct(
          productId: widget.productId,
          productType: widget.productType,
        ));
    super.initState();
  }

  @override
  void dispose() {
    context.read<DetailsBloc>().add(DetailsEvent.loadProduct(
          productId: widget.productId,
          productType: widget.productType,
        )); // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final image = widget.image;
    // final regularFee = widget.regularFee;
    // final recommend = widget.recommend;
    // final description = widget.description;

    // final name = widget.name;

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
        loaded: (productDetails) => CupertinoPageScaffold(
          navigationBar: const CupertinoNavigationBar(
            middle: Text(
              'In your area',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          child: DetailsWidget(
            // regularFee: productDetails.regularFee,
            // image: productDetails.image.toString(),
            // recommend: productDetails.recommendations.toString(),
            // name: productDetails.name.toString(),
            // description: productDetails.description.toString(),
            detailModel: productDetails,
          ),
        ),
        error: (errorMessage) => Center(child: FlutterLogo()),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   final image = widget.image;
  //   final regularFee = widget.regularFee;
  //   final recommend = widget.recommend;
  //   final description = widget.description;

  //   final name = widget.name;

  //   return CupertinoPageScaffold(
  //     navigationBar: const CupertinoNavigationBar(
  //       middle: Text(
  //         'In your area',
  //         style: TextStyle(
  //           fontSize: 24,
  //           fontWeight: FontWeight.bold,
  //           color: Colors.black,
  //         ),
  //       ),
  //     ),
  //     child: DetailsWidget(
  //       regularFee: regularFee,
  //       image: image,
  //       recommend: recommend,
  //       name: name,
  //       description: description,
  //     ),
  //   );
  // }
}
