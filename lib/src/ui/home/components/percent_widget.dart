import 'package:flutter/material.dart';

class PercentWidget extends StatelessWidget {
  const PercentWidget({
    Key? key,
    required this.persent, this.fontSize,
  }) : super(key: key);

  final String persent;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Text(
        persent,
        style: TextStyle(
          fontSize: fontSize,
          color: Colors.white,
        ),
      ),
    );
  }
}
