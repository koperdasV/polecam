import 'package:flutter/cupertino.dart';
import 'package:polec/resources/colors.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required this.title,
    required this.subTitle, required this.onPressed,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 24,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: CupertinoButton(
            onPressed: onPressed,
            child: Text(
              subTitle,
              style: TextStyle(
                fontSize: 14,
                color: AppColor.textButtonColor,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        )
      ],
    );
  }
}
