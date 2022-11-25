import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';

class CategorieTag extends StatelessWidget {
  const CategorieTag({
    Key? key,
    required this.tag,
  }) : super(key: key);

  final String tag;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        //physics: const NeverScrollableScrollPhysics(),
        itemCount: tag.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: AppColor.categorieColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
              child: Center(
                child: Text(
                  tag,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
