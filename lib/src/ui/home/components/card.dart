import 'package:flutter/cupertino.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/feature/details/widget/details_screen.dart';
import 'package:polec/src/ui/home/components/percent_widget.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.image,
    this.fontSize,
    this.child,
    required this.textTitle,
    required this.textSubtitle,
  }) : super(key: key);

  final String image;
  final String textTitle;
  final String textSubtitle;
  final double? fontSize;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const DetailsScreen(),
              ),
            );
          },
          child: Stack(
            children: [
              Image.asset(image),
              PercentWidget(
                percent: '17%',
                fontSize: fontSize,
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: child!,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            textTitle,
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        Text(
          textSubtitle,
          style: TextStyle(
            fontSize: 12,
            color: AppColor.subTitleColor,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
