import 'package:flutter/cupertino.dart';
import 'package:polec/resources/colors.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required this.title,
    this.subTitle = '',
    this.onPressed,
    this.fontSizeTitle = 24,
  }) : super(key: key);

  final String title;
  final String? subTitle;
  final double? fontSizeTitle;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            title,
            style: TextStyle(
              fontSize: fontSizeTitle,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16),
          child: CupertinoButton(
            onPressed: onPressed,
            child: Text(
              subTitle.toString(),
              style: TextStyle(
                fontSize: 14,
                color: AppColor.textButtonColor,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
