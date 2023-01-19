import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';

class PayoutCard extends StatelessWidget {
  const PayoutCard({
    Key? key,
    required this.titleText,
    required this.decoration,
    required this.summaryText,
  }) : super(key: key);

  final String titleText;
  final String summaryText;
  final Decoration decoration;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: FittedBox(
        fit: BoxFit.fill,
        child: Container(
          height: 125,
          width: 130,
          decoration: decoration,
          child: Padding(
            padding: const EdgeInsets.only(top: 8, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: SizedBox(
                    height: 40,
                    child: Text(
                      titleText,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Text(
                  summaryText,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  softWrap: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CanvasPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas
      ..drawRect(
        rect,
        Paint()
          ..style = PaintingStyle.stroke
          ..color = Colors.transparent,
      )
      ..clipRect(rect)
      ..save()
      ..translate(100, 100)
      ..drawCircle(
        Offset.zero,
        50,
        Paint()..color = const Color(0xFFd93150).withOpacity(0.4),
      )
      ..restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
