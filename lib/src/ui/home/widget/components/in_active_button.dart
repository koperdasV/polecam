
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InActiveButton extends StatelessWidget {
  const InActiveButton({
    Key? key,
    required this.text,
    this.fontSize = 17, this.gradient = const LinearGradient(
          colors: [
            Color(0xFFd93150),
            Color(0xFFf17088),
            Color(0xFFfc8ca1),
          ],
        ),
  }) : super(key: key);

  final String text;
  final double? fontSize;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 57,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: gradient,
      ),
      child: CupertinoButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: fontSize,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
