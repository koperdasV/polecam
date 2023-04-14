import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:polec/resources/colors.dart';
import 'package:polec/src/ui/home/model/categories/categories_model.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({
    Key? key,
    required this.categoriesModel,
    required this.isSelected,
  }) : super(key: key);

  final CategoriesModel categoriesModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 5,
          ),
        ],
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Icon(
              CupertinoIcons.airplane,
              size: 30,
              color: isSelected
                  ? CupertinoColors.activeBlue
                  : CupertinoColors.inactiveGray,
            ),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categoriesModel.name,
                style: TextStyle(
                  color: isSelected
                      ? AppColor.categorieTextColor
                      : AppColor.categorieColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'SFProDisplay',
                ),
              ),
              Text(
                categoriesModel.places,
                style: TextStyle(
                  color: isSelected
                      ? AppColor.categorieTextColor
                      : AppColor.categorieColor,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'SFProDisplay',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
