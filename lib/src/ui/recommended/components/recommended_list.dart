
import 'package:flutter/material.dart';
import 'package:polec/src/ui/home/model/recommended/recommended_model.dart';
import 'package:polec/src/ui/recommended/components/card.dart';

class RecommendedList extends StatelessWidget {
  const RecommendedList({
    Key? key,
    required this.filteredProducts,
  }) : super(key: key);

  final List<RecommendedModel> filteredProducts;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: filteredProducts.length,
        (context, index) => CardWidget(
          tmp: filteredProducts[index],
        ),
      ),
    );
  }
}
