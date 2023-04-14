import 'package:flash/flash.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:polec/src/ui/details/bloc/details_bloc.dart';
import 'package:polec/src/ui/payment/payment_widget.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({
    super.key,
    this.productId = '',
    this.productType = '',
  });
  final String productId;
  final String productType;

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
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
        loaded: (productDetails) => CupertinoPageScaffold(
          navigationBar: const CupertinoNavigationBar(
            middle: Text(
              'In your area',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
          ),
          child: PaymentWidget(
            detailModel: productDetails,
          ),
        ),
        error: (errorMessage) => const Center(child: FlutterLogo()),
      ),
    );
  }
}
