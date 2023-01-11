import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/theme/app_colors.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
    this.controller,
  }) : super(key: key);

  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return CupertinoSearchTextField(
      controller: controller,
      suffixIcon: const Icon(
        CupertinoIcons.search,
        color: Colors.black,
      ),
      placeholder: 'Search...',
      style: const TextStyle(
        fontWeight: FontWeight.normal,
        color: CupertinoColors.inactiveGray,
      ),
      suffixMode: OverlayVisibilityMode.always,
      suffixInsets: const EdgeInsetsDirectional.fromSTEB(0, 0, 25, 2),
      prefixIcon: const SizedBox(),
      prefixInsets: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 4),
    );
  }
}
