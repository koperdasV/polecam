import 'package:flutter/material.dart';
import 'package:polec/src/ui/details/models/detail_model.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key, required this.detailModel});
  final DetailModel detailModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(detailModel.id),
        Text('${detailModel.address}'),
        Text(detailModel.name),
        Text('${detailModel.regularFee}'),
        Text('${detailModel.recommendations}'),
        Text(detailModel.www),
        ...detailModel.address.map((e) => Text(e.city)).toList(),
      ],
    );
  }
}
