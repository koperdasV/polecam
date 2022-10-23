import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoSearchTextField(
      suffixIcon: Icon(
        CupertinoIcons.search,
        color: Colors.black,
      ),
      suffixMode: OverlayVisibilityMode.always,
      suffixInsets: EdgeInsetsDirectional.fromSTEB(0, 0, 25, 2),
      prefixIcon: SizedBox(),
    );
  }
}
