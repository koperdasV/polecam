import 'package:flutter/cupertino.dart';

class RecommendedButton extends StatelessWidget {
  const RecommendedButton({
    Key? key,
    required this.onPressed,
    this.color,
    this.gradient,
    this.imageColor,
    this.textColor,
    required this.textButton,
    this.image,
  }) : super(key: key);
  final VoidCallback onPressed;
  final Color? color;
  final Color? imageColor;
  final Color? textColor;
  final Gradient? gradient;
  final String textButton;
  final Widget? image;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Container(
        width: double.infinity,
        height: 44,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
          gradient: gradient,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(child: image),
            Padding(
              padding: const EdgeInsets.only(left: 6),
              child: Text(
                textButton,
                style: TextStyle(
                  color: textColor,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.7,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
