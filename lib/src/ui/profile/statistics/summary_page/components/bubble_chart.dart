import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';

class BubbleChartDataEntry {
  const BubbleChartDataEntry({
    required this.colors,
    required this.value,
    required this.label,
  });

  final num value;
  final String label;
  final List<Color> colors;
}

class BubbleChart extends StatelessWidget {
  BubbleChart({
    super.key,
    required this.data,
  }) : assert(data.isNotEmpty);

  final List<BubbleChartDataEntry> data;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return CustomPaint(
          size: Size(constraints.maxWidth, constraints.maxHeight),
          painter: BubbleChartPainter(data: data),
        );
      },
    );
  }
}

class BubbleChartPainter extends CustomPainter {
  const BubbleChartPainter({
    required this.data,
  });

  final List<BubbleChartDataEntry> data;

  double get _angleStep => 2 * math.pi / data.length;
  num get _maxValue => data.map((e) => e.value).reduce(math.max);

  double _getMaxRadius(Size size) {
    final fullCircleRadius = math.min(size.width, size.height) / 2;

    return fullCircleRadius * 1;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    const startAngle = -math.pi / 2;

    final a = _getMaxRadius(size);
    final h = a * math.cos(_angleStep / 2);
    final b = 2 * a * math.sin(_angleStep / 3);
    final r = b / 2 * math.sqrt((2 * a - b) / (2 * a + b));
    final maxVertexRadius = r * 0.8;
    final maxValueLength = h;

    data.asMap().forEach((index, entry) {
      final valueRadius = maxValueLength / _maxValue * entry.value;
      final vertexRadius = maxVertexRadius / _maxValue * entry.value;

      final angle = startAngle + _angleStep * index * (index  >= data.length/2 +1 ? 1 : 0.9);

      final point = center +
          Offset(
            valueRadius * math.cos(angle),
            valueRadius * math.sin(angle),
          );

      final paint = Paint()
        ..shader = LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: entry.colors,
        ).createShader(Rect.fromCenter(center: center, width: a, height: a))
        ..strokeWidth = 2;
      canvas.drawLine(center, point, paint);

      final vertexPaint = Paint()
        ..shader = LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: entry.colors,
        ).createShader(Rect.fromCircle(center: center, radius: a))
        ..style = PaintingStyle.fill;
      canvas.drawCircle(point, vertexRadius, vertexPaint);

      final valueTextPainter = TextPainter(
        text: TextSpan(
          text: entry.value.toString(),
          style: TextStyle(
            color: Colors.white,
            fontSize: vertexRadius,
            fontWeight: FontWeight.w700,
          ),
        ),
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
      );

      valueTextPainter.layout();

      // ignore: cascade_invocations
      valueTextPainter
        ..textScaleFactor = (2 * vertexRadius * 0.6) / valueTextPainter.width
        ..layout()
        ..paint(
          canvas,
          point.translate(
            -valueTextPainter.width / 2,
            -valueTextPainter.height / 2,
          ),
        );

      final labelTextRadius =
          valueRadius + vertexRadius + (r - maxVertexRadius);
      final labelTextPoint = center +
          Offset(
            labelTextRadius * math.cos(angle),
            labelTextRadius * math.sin(angle),
          );
      final labelTextPainter = TextPainter(
        text: TextSpan(
          text: entry.label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: AppColor.categorieColor,
          ),
        ),
        textAlign: TextAlign.center,
        textDirection: TextDirection.ltr,
      )..layout(maxWidth: 160);

      var labetTextOffset = labelTextPoint;

      if (index == 0 || (data.length.isEven && index == data.length / 2)) {
        labetTextOffset = labelTextPoint.translate(
          -labelTextPainter.width / 2,
          -labelTextPainter.height / 2,
        );
      } else {
        final kY = (index < 1 * data.length / 4 || index > 3 * data.length / 4)
            ? -1
            : 1;

        labetTextOffset = Offset(
          point.dx,
          point.dy + kY * vertexRadius,
        );

        if (kY == -1) {
          labetTextOffset = labetTextOffset.translate(
            0,
            -labelTextPainter.height,
          );
        }

        if (index > data.length / 2) {
          labetTextOffset = labetTextOffset.translate(
            -labelTextPainter.width,
            0,
          );
        }
      }

      labelTextPainter.paint(
        canvas,
        labetTextOffset,
      );
    });

    canvas
      ..drawCircle(center, 5, Paint()..color = Colors.grey)
      ..drawCircle(center, 2, Paint()..color = Colors.white);
  }

  @override
  bool shouldRepaint(BubbleChartPainter oldDelegate) {
    return false;
  }
}
