import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/feature/product_details/bloc/product_details_bloc.dart';

import 'package:polec/src/feature/product_details/widget/product_details_body.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({
    super.key,
    required this.productId,
    required this.productType,
  });
  final String productId;
  final String productType;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  void initState() {
    context.read<ProductDetailsBloc>().add(
          ProductDetailsEvent.loadProduct(
            productId: widget.productId,
            productType: widget.productType,
          ),
        );
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ProductDetailsBloc, ProductDetailsState>(
        listener: (context, state) => state.whenOrNull(
          error: (errorMessage) async =>
              context.showErrorBar(content: Text(errorMessage)),
        ),
        builder: (context, state) => state.maybeWhen(
          orElse: () =>
              const Center(child: CircularProgressIndicator.adaptive()),
          notFound: () => const Center(child: Text('not found product by id')),
          loaded: (productDetails) => Center(
            child: ProductDetailsBody(
              detailModel: productDetails,
            ),
          ),
          error: (errorMessage) => const Center(child: FlutterLogo()),
        ),
      ),
    );
  }
}
