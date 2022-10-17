import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

CupertinoThemeData buildThemeData() {
  return const CupertinoThemeData(
    barBackgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    textTheme: CupertinoTextThemeData(
      textStyle: TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 16,
        color: Colors.black,
      ),
    ),
  );
}
