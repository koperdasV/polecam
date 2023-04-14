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
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            child: Text(
              day,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: AppColor.subTitleColor,
              ),
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.normal,
              color: AppColor.subTitleColor,
            ),
          ),
        ],
      ),
    );
  }
}
