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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: SizedBox(
        child: CupertinoNavigationBar(
          backgroundColor: AppColor.navBarColor,
          border: Border.all(
            style: BorderStyle.none,
          ),
          middle: Text(
            title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(74);

  @override
  bool shouldFullyObstruct(BuildContext context) {
    return true;
  }
}
