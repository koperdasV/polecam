import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polec/resourses/app_images.dart';
import 'package:polec/theme/app_colors.dart';

class RecommendedButton extends StatelessWidget {
  const RecommendedButton({
    Key? key,
    required this.onPressed,
    this.color,
    this.gradient,
    this.imageColor,
    this.textColor,
  }) : super(key: key);
  final VoidCallback onPressed;
  final Color? color;
  final Color? imageColor;
  final Color? textColor;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
          gradient: gradient,
        ),
        child: CupertinoButton(
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.logo,
                color: imageColor,
              ),
              const SizedBox(width: 5),
              Text(
                'Recommend to friend',
                style: TextStyle(
                  color: textColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
