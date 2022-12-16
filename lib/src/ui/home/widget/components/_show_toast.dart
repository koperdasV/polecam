import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:polec/resources/colors.dart';

_showToast() {
    FToast? fToast;

  final toast = Container(
    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      gradient: LinearGradient(colors: AppColor.inActiveButtonColor),
    ),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: const [
        Icon(
          CupertinoIcons.heart,
          color: Colors.white,
        ),
        SizedBox(
          width: 14,
        ),
        Text(
          'Added to favorites',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    ),
  );

  fToast!.showToast(
      child: toast,
      gravity: ToastGravity.BOTTOM,
    );
}
