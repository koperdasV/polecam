import 'package:flutter/material.dart';
import 'package:polec/src/ui/home/widget/components/categorie_list_widget.dart';

class CategorieListBox extends StatelessWidget {
  const CategorieListBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 5),
      child: SizedBox(
        height: 70,
        child: CategoriesList(),
      ),
    );
  }
}
