// ignore_for_file: use_super_parameters

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polec/src/ui/home/components/categorie_list_widget.dart';
import 'package:polec/src/ui/home/components/konto_button.dart';
import 'package:polec/src/ui/home/components/title_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Column(
          children: const [
            Text(
              'Czesc Adam',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            Text(
              'Mazc 72,49 zl',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: KontoButton(),
          ),
          CategorieCard(),
          TitleWidget()
        ],
      ),
    );
  }
}
