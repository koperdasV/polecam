// ignore_for_file: cascade_invocations
import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';

class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const remained = 1304;
    const all = 2204;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Container(
        width: double.infinity,
        height: 47,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 7,
              spreadRadius: 0.2,
              offset: Offset(0, 5),
            )
          ],
        ),
        child: LienearProgressWidget(
          remained: remained.toDouble(),
          all: all.toDouble(),
          child: const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Used: $remained/$all',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.5,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LienearProgressWidget extends StatelessWidget {
  const LienearProgressWidget({
    super.key,
    required this.child,
    required this.remained,
    required this.all,
  });

  final Widget child;
  final double remained;
  final double all;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        CustomPaint(
          painter: MyPainter(
            remained: remained,
            all: all,
          ),
          child: child,
        )
      ],
    );
  }
}

class MyPainter extends CustomPainter {
  MyPainter({
    required this.remained,
    required this.all,
  });

  final double remained;
  final double all;

  @override
  void paint(Canvas canvas, Size size) {
    final percent = remained / all;
    final backgroundPaint = Paint();
    backgroundPaint.color = AppColor.navBarColor;
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height),
        const Radius.circular(20),
      ),
      backgroundPaint,
    );
    if (remained > all) {
      final feelPaint = Paint();
      feelPaint.color = AppColor.progressIndicatorColor;
      feelPaint.strokeCap = StrokeCap.round;
      canvas.drawRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(0, 0, size.width, size.height),
          const Radius.circular(20),
        ),
        feelPaint,
      );
    } else {
      final feelPaint = Paint();
      feelPaint.color = AppColor.progressIndicatorColor;
      feelPaint.strokeCap = StrokeCap.round;
      canvas.drawRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(0, 0, size.width * percent, size.height),
          const Radius.circular(20),
        ),
        feelPaint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
