import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    Key? key,
    required this.onTap,
    required this.child,
  }) : super(key: key);

  final VoidCallback onTap;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello Adam!',
              style: TextStyle(
                color: AppColor.titleColor,
                fontSize: 24,
                fontWeight: FontWeight.w900,
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'You have ',
                style: TextStyle(
                  color: AppColor.titleColor,
                  fontSize: 16,
                ),
                children: [
                  TextSpan(
                    text: r'72,49$',
                    style: TextStyle(
                      color: AppColor.categorieTextColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = () {},
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: GestureDetector(
            onTap: onTap,
            child: CircleAvatar(
              backgroundColor: Colors.grey,
              child: child,
            ),
          ),
        ),
      ],
    );
  }
}
