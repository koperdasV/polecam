import 'package:flutter/cupertino.dart';
import 'package:polec/resources/colors.dart';

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12,
          color: AppColor.titleColor,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
