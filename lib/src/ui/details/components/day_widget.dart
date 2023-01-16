import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';

class DayWidget extends StatelessWidget {
  const DayWidget({
    Key? key,
    required this.title,
    required this.day,
  }) : super(key: key);

  final String title;
  final String day;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: SizedBox(
        width: 197,
        child: Row(
          children: [
            Text(
              day,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColor.subTitleColor,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: AppColor.subTitleColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
