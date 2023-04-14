import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';

CupertinoThemeData buildThemeData() {
  return CupertinoThemeData(
    brightness: Brightness.light,
    barBackgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    textTheme: CupertinoTextThemeData(
      textStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
        color: AppColor.titleColor,
        fontFamily: 'SFProDisplay',
      ),
    ),
  );
}
