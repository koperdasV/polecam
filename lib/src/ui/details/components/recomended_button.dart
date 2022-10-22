import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polec/resourses/app_images.dart';
import 'package:polec/theme/app_colors.dart';

class RecommendedButton extends StatelessWidget {
  const RecommendedButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            colors: [
              AppColors.gradientStart,
              AppColors.gradientend,
            ],
          ),
        ),
        child: CupertinoButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppImages.logo, color: Colors.white,),
              const SizedBox(width: 5),
              const Text(
                'Recommend to friend',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
