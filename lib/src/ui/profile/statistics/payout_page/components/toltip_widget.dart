import 'dart:math';

import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';

Container tooltipBuild(double pointY) {
  double roundDouble(double value, int places) {
    final mod = pow(10.0, places);
    return (value * mod).round().toDouble() / mod;
  }

  return Container(
    width: 70,
    height: 50,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.blue.shade100,
          blurRadius: 5,
        ),
      ],
      borderRadius: BorderRadius.circular(13),
      color: Colors.white,
    ),
    child: Center(
      child: Text(
        '${roundDouble(pointY, 2)}\$',
        style: const TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.normal,
        ),
      ),
    ),
  );
}
