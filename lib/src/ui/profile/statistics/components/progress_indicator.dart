// ignore_for_file: cascade_invocations
import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';

class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Container(
        width: double.infinity,
        height: 60,
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
          percent: 0.50,
          remained: 1034,
          all: 2204,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: const [
                Text(
                  'Used:',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    '1034/2204',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
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
    required this.percent,
  });

  final Widget child;
  final double remained;
  final double all;
  final double percent;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        CustomPaint(
          painter: MyPainter(
            remained: remained,
            all: all,
            percent: percent,
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
    required this.percent,
  });

  final double remained;
  final double all;
  final double percent;

  @override
  void paint(Canvas canvas, Size size) {
    final backgroundPaint = Paint();
    backgroundPaint.color = AppColor.navBarColor;
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(0, 0, size.width, size.height),
        const Radius.circular(20),
      ),
      backgroundPaint,
    );

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

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
