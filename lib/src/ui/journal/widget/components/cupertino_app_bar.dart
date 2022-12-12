import 'package:flutter/material.dart';
import 'package:polec/src/ui/recommended/components/cupertino_nav_bar.dart';

class CupertinoAppBar extends StatelessWidget with PreferredSizeWidget {
  CupertinoAppBar({
    Key? key,
    required this.title,
    required this.child,
  }) : super(key: key);

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight * 2),
      child: Column(
        children: [
          CupertinoNavBar(
            title: title,
          ),
          child,
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * 2);
}
