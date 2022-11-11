import 'package:flutter/material.dart';
import 'package:polec/src/ui/home/widget/components/card.dart';

class HorizontalListScroll extends StatelessWidget {
  const HorizontalListScroll({
    Key? key,
    required this.image,
    this.fontSize = 34,
    this.child,
    required this.textTitle,
    required this.textSubtitle,
    this.scrollDirection = Axis.horizontal,
  }) : super(key: key);

  final String image;
  final String textTitle;
  final String textSubtitle;

  final double? fontSize;
  final Widget? child;
  final Axis? scrollDirection;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: scrollDirection!,
      itemCount: 4,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: CardWidget(
          image: image,
          fontSize: fontSize,
          textTitle: textTitle,
          textSubtitle: textSubtitle,
          child: child,
        ),
      ),
    );
  }
}
