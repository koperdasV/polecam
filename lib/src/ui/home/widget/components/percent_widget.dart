import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PercentWidget extends StatelessWidget {
  const PercentWidget({
    Key? key,
    required this.percent,
    this.fontSize,
  }) : super(key: key);

  final String percent;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Text(
        '$percent%',
        style: TextStyle(
          fontSize: fontSize,
          color: Colors.white,
          fontWeight: FontWeight.w900,
          shadows: const [
            Shadow(
              color: CupertinoColors.systemGrey,
              blurRadius: 10,
            ),
          ],
          letterSpacing: 1,
          fontFamily: 'SFProDisplay',
        ),
      ),
    );
  }
}
