import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InActiveButton extends StatelessWidget {
  const InActiveButton({
    Key? key,
    required this.text,
    this.fontSize = 17,
    this.gradient = const LinearGradient(
      colors: [
        Color(0xFFd93150),
        Color(0xFFfc8ca1),
      ],
    ),
    required this.onPressed,
    this.borderRadius = 10,
    this.width = double.infinity,
    this.height = 44,
  }) : super(key: key);

  final String text;
  final double? fontSize;
  final double? width;
  final double? height;
  final double? borderRadius;
  final Gradient? gradient;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      padding: EdgeInsets.zero,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius!),
          gradient: gradient,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
        ),
      ),
    );
  }
}
