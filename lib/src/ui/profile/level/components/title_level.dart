import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';

class TitleLevelWidget extends StatelessWidget {
  const TitleLevelWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 16,
        color: AppColor.titleColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
