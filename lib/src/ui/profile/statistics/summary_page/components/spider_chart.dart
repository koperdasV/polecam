library spider_chart;

import 'dart:math' show pi, cos, sin, max;

import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';
import 'package:polec/resources/colors.dart';

class SpiderChart extends StatelessWidget {
  SpiderChart({
    super.key,
    required this.data,
    this.colors = const [],
    this.maxValue,
    this.labels = const [],
    this.size = Size.infinite,
    this.decimalPrecision = 0,
    this.fallbackHeight = 200,
    this.fallbackWidth = 200,
    this.colorSwatch,
  })  : assert(
          labels.isNotEmpty ? data.length == labels.length : true,
          'Length of data and labels lists must be equal',
        ),
        assert(
          colors.isNotEmpty ? colors.length == data.length : true,
          'Custom colors length and data length must be equal',
        ),
        assert(
          colorSwatch != null ? data.length < 10 : true,
          'For large data sets (>10 data points), please define custom colors using the [colors] parameter',
        );

  /// The data points to be displayed
  final List<double> data;

  /// The colors of the data points
  final List<Color> colors;
  final MaterialColor? colorSwatch;

  /// Optional labels for the data points
  final List<String> labels;

  /// The value represented by the chart perimeter
  final double? maxValue;
  final int decimalPrecision;

  /// Custom painter [Size]
  final Size size;
  final double fallbackHeight;
  final double fallbackWidth;

  @override
  Widget build(BuildContext context) {
    List<Color> dataPointColors;

    if (colors.isNotEmpty) {
      dataPointColors = colors;
    } else {
      final swatch = colorSwatch ?? Colors.blue;

      dataPointColors = <Color>[
        swatch.shade900,
        swatch.shade800,
        swatch.shade700,
        swatch.shade600,
        swatch.shade500,
        swatch.shade400,
        swatch.shade300,
        swatch.shade200,
        swatch.shade100,
        swatch.shade50,
      ].take(data.length).toList();
    }

    final calculatedMax = maxValue ?? data.reduce(max);

    return LimitedBox(
      maxWidth: fallbackWidth,
      maxHeight: fallbackHeight,
      child: CustomPaint(
        size: size,
        painter: SpiderChartPainter(
          data,
          calculatedMax,
          dataPointColors,
          labels,
          decimalPrecision,
        ),
      ),
    );
  }
}

/// Custom painter for the [SpiderChart] widget
class SpiderChartPainter extends CustomPainter {
  SpiderChartPainter(
    this.data,
    this.maxNumber,
    this.colors,
    this.labels,
    this.decimalPrecision,
  );
  final List<double> data;
  final double maxNumber;
  final List<Color> colors;
  final List<String> labels;
  final int decimalPrecision;

  final Paint stroke = Paint()
    ..color = const Color.fromARGB(255, 213, 213, 213)
    ..style = PaintingStyle.stroke
    ..strokeWidth = 3;

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);

    final angle = (2 * pi) / data.length;

    final dataPoints = <Offset>[];

    for (var i = 0; i < data.length; i++) {
      final scaledRadius = (data[i] / maxNumber) * center.dy;
      final x = scaledRadius * cos(angle * i - pi / 2);
      final y = scaledRadius * sin(angle * i - pi / 2);

      dataPoints.add(Offset(x, y) + center);
    }

    final outerPoints = <Offset>[];

    for (var i = 0; i < data.length; i++) {
      final x = center.dy * cos(angle * i - pi / 2);
      final y = center.dy * sin(angle * i - pi / 2);

      outerPoints.add(Offset(x, y) + center);
    }

    if (labels.isNotEmpty) {
      paintLabels(canvas, center, dataPoints, labels);
    }
    paintGraphOutline(canvas, center, dataPoints, size);
    paintDataPolygon(canvas, dataPoints);
    paintDataPoints(canvas, dataPoints);
  }

  //Method for drawing polygon
  void paintDataPolygon(Canvas canvas, List<Offset> points) {
    final path = Path()..addPolygon(points, true);

    canvas.drawPath(
      path,
      stroke,
    );
  }

  //Method for drawing points
  void paintDataPoints(Canvas canvas, List<Offset> points) {
    for (var i = 0; i < points.length; i++) {
      canvas.drawCircle(
        points[i],
        i < points.length / 2 ? 10 : 8,
        Paint()..color = colors[i],
      );
    }
  }

  //Method for drawing lines
  void paintGraphOutline(
    Canvas canvas,
    Offset center,
    List<Offset> points,
    Size size,
  ) {
    for (var i = 0; i < points.length; i++) {
      final paintDotted = Paint()
        ..style = PaintingStyle.stroke
        ..color = colors[i]
        ..strokeWidth = 3;
      final path = Path()
        ..moveTo(center.dx, center.dy)
        ..cubicTo(
          points[i].dx,
          points[i].dy,
          points[i].dx,
          points[i].dy,
          points[i].dx,
          points[i].dy,
        );
      canvas.drawPath(
        dashPath(
          path,
          dashArray: CircularIntervalList<double>(<double>[12, 10]),
        ),
        paintDotted,
      );
    }

    canvas
      ..drawCircle(center, 6, Paint()..color = Colors.grey)
      ..drawCircle(center, 3, Paint()..color = Colors.white);
  }

  //Method for drawing labels
  void paintLabels(
    Canvas canvas,
    Offset center,
    List<Offset> points,
    List<String> labels,
  ) {
    final textPainter = TextPainter(textDirection: TextDirection.ltr);
    final textStyle = TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      color: AppColor.categorieColor,
    );

    for (var i = 0; i < points.length; i++) {
      textPainter
        ..text = TextSpan(text: labels[i], style: textStyle)
        ..layout(maxWidth: 50);
      if (points[i].dx < center.dx) {
        textPainter.paint(
          canvas,
          points[i].translate(-(textPainter.size.width + 8.0), -15),
        );
      } else if (points[i].dx > center.dx) {
        textPainter.paint(canvas, points[i].translate(15, -10));
      } else if (points[i].dy < center.dy) {
        textPainter.paint(
          canvas,
          points[i].translate(-(textPainter.size.width / 2), -40),
        );
      } else {
        textPainter.paint(
          canvas,
          points[i].translate(-(textPainter.size.width / 2), 10),
        );
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
