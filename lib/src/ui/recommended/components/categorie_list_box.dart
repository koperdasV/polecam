import 'package:flutter/material.dart';
import 'package:polec/src/ui/home/components/categorie_list_widget.dart';
import 'package:polec/src/ui/recommended/components/sliver_header.dart';

class CategorieListBox extends StatelessWidget {
  const CategorieListBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: SliverHeader(
        maxHeight: 80,
        minHeight: 80,
        child: const ColoredBox(
          color: Colors.white,
          child: CategorieList(),
        ),
      ),
    );
  }
}
