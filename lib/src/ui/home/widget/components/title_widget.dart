import 'package:flutter/cupertino.dart';
import 'package:polec/resources/colors.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required this.title,
    this.subTitle = '',
    this.onPressed,
    this.fontSizeTitle = 24,
    this.fontWeigthTitle = FontWeight.w900,
  }) : super(key: key);

  final String title;
  final String? subTitle;
  final double? fontSizeTitle;
  final FontWeight? fontWeigthTitle;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: fontSizeTitle,
              fontWeight: fontWeigthTitle,
              fontStyle: FontStyle.normal,
              letterSpacing: 1,
            ),
          ),
          CupertinoButton(
            onPressed: onPressed,
            child: Text(
              subTitle.toString(),
              style: TextStyle(
                fontSize: 16,
                color: AppColor.textButtonColor,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
