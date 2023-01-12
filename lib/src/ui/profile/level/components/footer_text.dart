import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';

class FooterText extends StatelessWidget {
  const FooterText({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 12,
        color: AppColor.titleColor,
        fontWeight: FontWeight.normal,
        height: 1.5,
      ),
      textAlign: TextAlign.left,
    );
  }
}
