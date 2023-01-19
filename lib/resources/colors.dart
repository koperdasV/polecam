import 'package:flutter/material.dart';

abstract class AppColor {
  static Color categorieColor = const Color.fromRGBO(153, 153, 153, 0.75);
  static Color categorieTextColor = const Color.fromRGBO(0, 122, 255, 1);
  static Color textButtonColor = const Color.fromRGBO(222, 44, 102, 1);
  static Color titleColor = const Color.fromRGBO(65, 65, 65, 1);
  static Color subTitleColor = const Color.fromRGBO(159, 162, 177, 1);
  static Color navBarColor = const Color.fromRGBO(249, 249, 249, 1);
  static Color navigatorColor = const Color.fromRGBO(118, 118, 128, 0.28);
  static Color favoriteButtonColor = const Color.fromRGBO(20, 27, 64, 1);
  static Color progressIndicatorColor = const Color.fromRGBO(242, 166, 101, 1);
  static Color bonusDiagramColor = const Color.fromRGBO(47, 180, 191, 1);
  static Color unFavoritesColor = const Color.fromRGBO(190, 190, 190, 1);
  static Color recommendLineColor = const Color.fromRGBO(69, 83, 224, 1);

  //BUBBLE CHART COLORS GRADIENT\\
  static List<Color> blueBall = const [
    Color.fromRGBO(0, 178, 211, 1),
    Color.fromRGBO(64, 214, 242, 1),
  ];
  static List<Color> purpleBall = const [
    Color.fromRGBO(124, 29, 255, 1),
    Color.fromRGBO(159, 95, 247, 1),
  ];
  static List<Color> pinkBall = const [
    Color.fromRGBO(197, 28, 227, 1),
    Color.fromRGBO(237, 137, 255, 1),
  ];
  static List<Color> yellowBall = const [
    Color.fromRGBO(226, 199, 1, 1),
    Color.fromRGBO(255, 228, 23, 1),
  ];
  static List<Color> greenBall = const [
    Color.fromRGBO(36, 180, 74, 1),
    Color.fromRGBO(55, 208, 96, 1),
  ];
  static List<Color> redBall = const [
    Color.fromRGBO(237, 62, 62, 1),
    Color.fromRGBO(252, 121, 121, 1),
  ];

  static BoxDecoration moneybackColor = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    image: const DecorationImage(
      fit: BoxFit.fill,
      image: AssetImage('assets/images/moneyback.png'),
    ),
  );
  static BoxDecoration getColorDetails = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    gradient: const LinearGradient(
      colors: [
        Color(0xFFd93150),
        Color(0xFFfc8ca1),
      ],
    ),
  );
  static BoxDecoration recomendationsColor = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    image: const DecorationImage(
      fit: BoxFit.fill,
      image: AssetImage('assets/images/recommend.png'),
    ),
  );
  static BoxDecoration bonusColor = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    image: const DecorationImage(
      fit: BoxFit.fill,
      image: AssetImage('assets/images/bonus.png'),
    ),
  );

  static LinearGradient payoutButton = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF57D84C),
      Color(0xFF1F9D15),
      Color(0xFF15770E),
    ],
  );
}
