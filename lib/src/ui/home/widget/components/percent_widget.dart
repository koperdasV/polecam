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
      child: Stack(
        children: [
          Text(
            '$percent%',
            style: TextStyle(
              foreground: Paint()
                ..style = PaintingStyle.stroke
                ..strokeWidth = 1.5
                ..color = Colors.black,
              fontSize: fontSize,
            ),
          ),
          Text(
            '$percent%',
            style: TextStyle(
              fontSize: fontSize,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
