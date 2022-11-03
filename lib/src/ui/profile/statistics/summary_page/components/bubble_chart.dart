import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:polec/src/ui/profile/statistics/summary_page/components/ball_painter.dart';

class CustomBubbleChart extends StatelessWidget {
  const CustomBubbleChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.red)),
          child: CustomPaint(
            size: Size.infinite,
            painter: BallPainter(
              radius: '25',
              ballColor: Colors.blue,
              lineColor: Colors.blue,
            ),
          ),
        ),
        Transform.rotate(
          angle: 65 * math.pi / 180,
          child: Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.red)),
            child: CustomPaint(
              size: Size.infinite,
              painter: BallPainter(
                radius: '20',
                ballColor: Colors.purple,
                lineColor: Colors.purple,
              ),
            ),
          ),
        ),
        Transform.rotate(
          angle: 115 * math.pi / 180,
          child: CustomPaint(
            size: Size.infinite,
            painter: BallPainter(
              radius: '18',
              ballColor: Colors.pink,
              lineColor: Colors.pink,
            ),
          ),
        ),
        Transform.rotate(
          angle: 165 * math.pi / 180,
          child: CustomPaint(
            size: Size.infinite,
            painter: BallPainter(
              radius: '25',
              ballColor: Colors.yellow,
              lineColor: Colors.yellow,
            ),
          ),
        ),
        Transform.rotate(
          angle: 225 * math.pi / 180,
          child: CustomPaint(
            size: Size.infinite,
            painter: BallPainter(
              radius: '24',
              ballColor: Colors.green,
              lineColor: Colors.green,
            ),
          ),
        ),
        Transform.rotate(
          angle: 285 * math.pi / 180,
          child: Stack(
            children: [
              CustomPaint(
                size: Size.infinite,
                painter: BallPainter(
                  radius: '26',
                  ballColor: Colors.red,
                  lineColor: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
