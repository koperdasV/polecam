import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/recommended/components/sliver_header.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: SliverHeader(
        child: ColoredBox(
          color: AppColor.navBarColor,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: CupertinoSearchTextField(
              suffixIcon: Icon(
                CupertinoIcons.search,
                color: Colors.black,
              ),
              suffixInsets: EdgeInsetsDirectional.fromSTEB(0, 0, 25, 2),
              suffixMode: OverlayVisibilityMode.always,
              prefixIcon: SizedBox(),
            ),
          ),
        ),
        maxHeight: 36,
        minHeight: 36,
      ),
    );
  }
}
