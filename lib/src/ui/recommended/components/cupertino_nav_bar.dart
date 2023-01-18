import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';

class CupertinoNavBar extends StatelessWidget
    with ObstructingPreferredSizeWidget {
  const CupertinoNavBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return CupertinoNavigationBar(
      backgroundColor: AppColor.navBarColor,
      border: Border.all(
        style: BorderStyle.none,
      ),
      middle: Text(
        title,
        style: TextStyle(
          color: AppColor.titleColor,
          fontSize: 24,
          fontWeight: FontWeight.w900,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(44);

  @override
  bool shouldFullyObstruct(BuildContext context) {
    return true;
  }
}
