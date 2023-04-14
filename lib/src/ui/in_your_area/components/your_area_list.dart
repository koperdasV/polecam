
import 'package:flutter/material.dart';
import 'package:polec/src/ui/home/model/yourArea/your_area_model.dart';
import 'package:polec/src/ui/in_your_area/components/card.dart';

class YourAreaListFiltered extends StatelessWidget {
  const YourAreaListFiltered({
    Key? key,
   required this.filteredProducts,
  }) : super(key: key);

  final List<YourAreaModel> filteredProducts;

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