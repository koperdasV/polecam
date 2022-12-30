import 'package:flutter/material.dart';

class LvlBox extends StatelessWidget {
  const LvlBox({
    super.key,
    required this.text,
    required this.gradientStart,
    required this.gradientEnd,
  });
  final String text;
  final Color gradientStart;
  final Color gradientEnd;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [
            gradientStart,
            gradientEnd,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: CircleAvatar(
        radius: 35,
        backgroundColor: Colors.transparent,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
