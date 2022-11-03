import 'dart:ui';

import 'package:flutter/material.dart';

class BallPainter extends CustomPainter {
  BallPainter({
    required this.radius,
    required this.ballColor,
    required this.lineColor,
  });
  String radius;
  Color ballColor;
  Color lineColor;

  TextPainter textPainter = TextPainter(
    textAlign: TextAlign.center,
    textDirection: TextDirection.ltr,
  );
  @override
  void paint(Canvas canvas, Size size) {
    textPainter.text = TextSpan(
      text: radius,
      style: TextStyle(
        color: Colors.black,
        fontSize: double.parse(radius),
        fontWeight: FontWeight.w500,
      ),
    );
    //circle color
    final circlePaint = Paint()..color = ballColor;

    //center Point
    final centerPoint = Paint()
      ..color = Colors.grey
      ..strokeWidth = 8
      ..strokeCap = StrokeCap.round;
    //line style
    final lineBlue = Paint()
      ..color = lineColor
      ..strokeWidth = 3;

    //starting point of the line
    const startOffset = Offset(165, 150);

    canvas
      ..drawLine(startOffset, const Offset(150, 50), lineBlue)
      ..drawPoints(PointMode.points, [const Offset(165, 150)], centerPoint)
      ..drawCircle(const Offset(150, 50), double.parse(radius), circlePaint);

    textPainter
      ..layout()
      ..paint(canvas, const Offset(150, 50));
  }

  @override
  bool shouldRepaint(BallPainter oldDelegate) {
    return false;
  }
}
