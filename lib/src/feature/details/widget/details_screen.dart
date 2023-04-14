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

  final String productId;
  final String productType;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  void initState() {
    context.read<DetailsBloc>().add(
          DetailsEvent.loadProduct(
            productId: widget.productId,
            productType: widget.productType,
          ),
        );
    super.initState();
  }

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
        loaded: (productDetails) => DetailModelContext(
          detailModel: productDetails,
          child: CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              middle: appBarText(),
            ),
            child: DetailsWidget(
              detailModel: productDetails,
            ),
          ),
        ),
        error: (errorMessage) => const Center(child: FlutterLogo()),
      ),
    );
  }

  Text appBarText() {
    const textStyle = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w900,
      color: Colors.black,
    );
    if (widget.productType == 'recommended') {
      return const Text(
        'Recommended for you',
        style: textStyle,
      );
    }
    if (widget.productType == 'favourites') {
      return const Text(
        'Favorite',
        style: textStyle,
      );
    } else {
      return const Text(
        'In your area',
        style: textStyle,
      );
    }
  }
}

class DetailModelContext extends InheritedWidget {
  const DetailModelContext({
    super.key,
    required this.detailModel,
    required super.child,
  });

  final DetailModel detailModel;

  static DetailModelContext? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<DetailModelContext>();
  }

  @override
  bool updateShouldNotify(DetailModelContext oldWidget) {
    return detailModel != oldWidget.detailModel;
  }
}
