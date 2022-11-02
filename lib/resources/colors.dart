import 'package:flutter/material.dart';

abstract class AppColor {
  static Color categorieColor = const Color.fromRGBO(153, 153, 153, 0.75);
  static Color categorieTextColor = const Color.fromRGBO(0, 122, 255, 1);
  static Color textButtonColor = const Color.fromRGBO(222, 44, 102, 1);
  static Color titleColor = const Color.fromRGBO(65, 65, 65, 1);
  static Color subTitleColor = const Color.fromRGBO(159, 162, 177, 1);
  static Color navBarColor = const Color.fromRGBO(249, 249, 249, 1);
  static Color favoriteButtonColor = const Color.fromRGBO(20, 27, 64, 1);
  static Color progressIndicatorColor = const Color.fromRGBO(242, 166, 101, 1);
  static Color bonusDiagramColor = const Color.fromRGBO(47, 180, 191, 1);

  static BoxDecoration moneybackColor = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    gradient: const LinearGradient(
      colors: [
        Color(0xFFd93150),
        Color(0xFFfc8ca1),
      ],
    ),
  );
  static BoxDecoration recomendationsColor = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    gradient: const LinearGradient(
      colors: [
        Color(0xFF313cd9),
        Color(0xFF8ca6fc),
      ],
    ),
  );
  static BoxDecoration bonusColor = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    gradient: const LinearGradient(
      colors: [
        Color(0xFF24aabf),
        Color(0xFF52d6c0),
      ],
    ),
  );
}
